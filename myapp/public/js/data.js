window.onload=function () {
allnews()
var btn=document.getElementById('btnt');
btn.addEventListener('click',submitajax);



}
function submitajax() { //点击获取当前新闻输入value
    var name = document.getElementById('exampleInputEmail1').value;
    var author = document.getElementById('exampleInputPassword1').value;
    var src = document.getElementById('exampleInputEmail3').value;
    var time = document.getElementById('exampleInputEmail2').value;
    var special = document.getElementById('exampleInputEmail5').value;
    var cover=document.getElementById('exampleInputEmail6').value;
    var sc=document.getElementById('exampleInputEmail7').value;

    var data = { //以对象形式 进行赋值 添加属性  data=页面数据
        name: name,
        author: author,
        src: src,
        time: time,
        special: special,
        cover:cover,
        sc:sc
    };

    $.ajax({ //发送当前数据
        url: '/admin/musics',
        type: 'post',
        data: data, //属性值
        dataType: 'json', //只能是对象传回json
        success: function(data) {
            console.log(data);
        },
        error: function(err) {
            /* Act on the event */
            console.log('err:' + err)
        }
    })
}


function allnews() {
    $.ajax({ //使用ajax
        url: '/admin/allmusic', //接受数据地址
        type: 'post', //方式 只接受 可以使用get
        // data: 'json',
        success: function(data) { //数据接受成功后的回调 传回接受数据 data  数组形式
            // console.log(data)
            // JSON.
            for (var i = 0; i < data.length; i++) { //遍历 接受数组
                $('tbody').append('<tr><td class="td1">'+data[i].id+'</td><td>'+data[i].name+'</td><td>'+data[i].author+'</td><td>'+data[i].src+'</td><td>'+data[i].time+'</td><td>'+data[i].special+'</td><td>'+data[i].cover+'</td><td>'+data[i].sc+'</td></tr>')

            }
        }
    })
}
