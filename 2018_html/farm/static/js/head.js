document.writeln("<!DOCTYPE html>");
document.writeln("<html lang='en'>");
document.writeln("<head>");
document.writeln("    <meta charset='UTF-8'>");
document.writeln("    <title>Title</title>");
document.writeln("    <link rel='stylesheet' href='static/css/layui.css'>");
document.writeln("</head>");
document.writeln("<body>");
document.writeln("<div class='layui-header'>");
document.writeln("    <div class='layui-logo'>layui 后台布局</div>");
document.writeln("    <!-- 头部区域（可配合layui已有的水平导航） -->");
document.writeln("    <ul class='layui-nav layui-layout-left'>");
document.writeln("        <li class='layui-nav-item'><a href=''>控制台</a></li>");
document.writeln("        <li class='layui-nav-item'><a href=''>商品管理</a></li>");
document.writeln("        <li class='layui-nav-item'><a href=''>用户</a></li>");
document.writeln("        <li class='layui-nav-item'>");
document.writeln("            <a href='javascript:;'>其它系统</a>");
document.writeln("            <dl class='layui-nav-child'>");
document.writeln("                <dd><a href=''>邮件管理</a></dd>");
document.writeln("                <dd><a href=''>消息管理</a></dd>");
document.writeln("                <dd><a href=''>授权管理</a></dd>");
document.writeln("            </dl>");
document.writeln("        </li>");
document.writeln("    </ul>");
document.writeln("    <ul class='layui-nav layui-layout-right'>");
document.writeln("        <li class='layui-nav-item'>");
document.writeln("            <a href='javascript:;'>");
document.writeln("                <img src='http://t.cn/RCzsdCq' class='layui-nav-img'>");
document.writeln("                贤心");
document.writeln("            </a>");
document.writeln("            <dl class='layui-nav-child'>");
document.writeln("                <dd><a href=''>基本资料</a></dd>");
document.writeln("                <dd><a href=''>安全设置</a></dd>");
document.writeln("            </dl>");
document.writeln("        </li>");
document.writeln("        <li class='layui-nav-item'><a href=''>退出</a></li>");
document.writeln("    </ul>");
document.writeln("</div>");
document.writeln("<div class='layui-side layui-bg-black'>");
document.writeln("    <div class='layui-side-scroll'>");
document.writeln("        <!-- 左侧导航区域（可配合layui已有的垂直导航） -->");
document.writeln("        <ul class='layui-nav layui-nav-tree'  lay-filter='test'>");
document.writeln("            <li class='layui-nav-item layui-nav-itemed'>");
document.writeln("                <a class='' href='javascript:;'>所有商品</a>");
document.writeln("                <dl class='layui-nav-child'>");
document.writeln("                    <dd><a href='javascript:;'>列表一</a></dd>");
document.writeln("                    <dd><a href='javascript:;'>列表二</a></dd>");
document.writeln("                    <dd><a href='javascript:;'>列表三</a></dd>");
document.writeln("                    <dd><a href=''>超链接</a></dd>");
document.writeln("                </dl>");
document.writeln("            </li>");
document.writeln("            <li class='layui-nav-item'>");
document.writeln("                <a href='javascript:;'>解决方案</a>");
document.writeln("                <dl class='layui-nav-child'>");
document.writeln("                    <dd><a href='javascript:;'>列表一</a></dd>");
document.writeln("                    <dd><a href='javascript:;'>列表二</a></dd>");
document.writeln("                    <dd><a href=''>超链接</a></dd>");
document.writeln("                </dl>");
document.writeln("            </li>");
document.writeln("            <li class='layui-nav-item'><a href=''>云市场</a></li>");
document.writeln("            <li class='layui-nav-item'><a href='time_axis.html'>时间轴</a></li>");
document.writeln("        </ul>");
document.writeln("    </div>");
document.writeln("</div>");
document.writeln("<script type='text/javascript' src='static/layui.js'>");
document.writeln("</script>");
document.writeln("<script type='text/javascript' src='static/jquery-1.11.1.min.js'>");
document.writeln("</script>");
document.writeln("</body>");
document.writeln("</html>");