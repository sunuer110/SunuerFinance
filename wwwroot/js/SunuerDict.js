

/**
 * 发送网络请求获取字典数据(传入字典类型返回对应字典数据)
 * @param {any} DictType 字典类型
 */
function getDictData(DictType) {
    return new Promise((resolve, reject) => {
        $.ajax({
            url: "/api/SunuerDictData/get",
            type: "get",
            data: { DictType },
            success: function (res) {
                if (res.code == 0) {
                    resolve(res.data)
                } else {
                    reject(res.msg)
                }
            },
            error: function (error) {
                reject(error);
            }
        })

    });
}
/**
 * 发送网络请求获取字典数据(返回表单所需的字典字符串)
 * @param {any} type 必填 字典类型
 * @param {any} formType 必填 表单类型(select,radio)
 * @param {any} formData 没有则传"" 默认选中值
 * @param {any} addDefaultOption 必填 是否添加默认选项0不添加1添加
 * @param {any} radioName 非必填 单选框对应的name值
 */
function getDictDataStr(type, formType, formData, addDefaultOption, radioName) {
    return new Promise((resolve, reject) => {
        // 先调用getDictData方法获取字典数据
        getDictData(type).then(res => {
            // 再将获取到的数据拼接成节点字符串返回
            var str = fromDataToElement(res, formType, formData, addDefaultOption, radioName, "DictValue", "DictLabel");// 返回的拼接的字符串
            resolve(str)
        }).catch(error => {
            reject(error)
        })
    })
}

/**
 * 根据传入的字典数据和字典value，返回字典label
 * @param {any} dictList 字典数据
 * @param {any} value 字典value
 */
function getDictLabel(dictList, value) {
    return dictList.find(item => item.DictValue == value).DictLabel;
}

/**
 * 根据传入的数据，返回数据拼接后的字符串
 * @param {any} Data 必填 数据(数组类型)
 * @param {any} formType 必填 表单类型(select,radio)
 * @param {any} formData 没有则传"" 默认选中值
 * @param {any} addDefaultOption 必填 下拉框是否添加默认选项0不添加1添加
 * @param {any} radioName 非必填 单选框对应的name值
 * @param {any} valueKey 必填 对应的value字段名
 * @param {any} labelKey 必填 对应的label字段名
 * 
 */
function fromDataToElement(Data, formType, formData, addDefaultOption, radioName, valueKey, labelKey) {
    // 1.先判断拼接的表单类型
    // 2.在判断是否需要添加默认选项
    // 3.根据拼接类型，循环拼接字符串
    var str = "";
    if (Data.length > 0) {
        if (formType == 'select') {
            if (addDefaultOption == 1) {
                str += `<option value="" >请选择</option>`
            }
            Data.forEach(item => {
                str += `<option value="${item[valueKey]}" ${item[valueKey] == formData ? 'selected' : ''} >${item[labelKey]}</option>`
            });
        } else if (formType == 'radio') {
            Data.forEach(item => {
                str += `<input type="radio" name="${radioName}" value="${item[valueKey]}" title="${item[labelKey]}" lay-filter="${radioName}" ${item[valueKey] == formData ? 'checked' : ''} >`

            });
        }

    }
    return str;
}


var initialHeight = window.innerHeight
// 监听窗口大小变化（软键盘弹起/收起会触发）
window.addEventListener('resize', () => {
    const currentHeight = window.innerHeight;
    const isKeyboardOpen = currentHeight < initialHeight * 0.8; // 高度减少超过20%视为键盘弹起
    var tab = document.getElementById('bottomTab');
    // 只有有tab节点时才显示隐藏
    if (tab) {
        if (isKeyboardOpen) {
            //layer.msg("隐藏")
            tab.style.display = 'none';

            // fixedElement.classList.add('fixed-bottom--hidden');
        } else {
            //layer.msg("显示")
            tab.style.display = 'flex';

            // fixedElement.classList.remove('fixed-bottom--hidden');
        }
    }
    
});