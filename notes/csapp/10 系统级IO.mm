
<map>
  <node ID="root" TEXT="十 系统级I/O">
    <node TEXT="序言" ID="EkuxIpFBDc" _mubu_text="%3Cspan%3E%E5%BA%8F%E8%A8%80%3C/span%3E" STYLE="bubble" POSITION="default">
      <node TEXT="IO是主存和外部设备之间复制数据的过程" ID="eU0VQvXw1c" _mubu_text="%3Cspan%3EIO%E6%98%AF%E4%B8%BB%E5%AD%98%E5%92%8C%E5%A4%96%E9%83%A8%E8%AE%BE%E5%A4%87%E4%B9%8B%E9%97%B4%E5%A4%8D%E5%88%B6%E6%95%B0%E6%8D%AE%E7%9A%84%E8%BF%87%E7%A8%8B%3C/span%3E" STYLE="fork"/>
      <node TEXT="linux中用系统级IO函数实现较高级别的" ID="m13jb4XeJZ" _mubu_text="%3Cspan%3Elinux%E4%B8%AD%E7%94%A8%E7%B3%BB%E7%BB%9F%E7%BA%A7IO%E5%87%BD%E6%95%B0%E5%AE%9E%E7%8E%B0%E8%BE%83%E9%AB%98%E7%BA%A7%E5%88%AB%E7%9A%84%3C/span%3E" STYLE="fork"/>
    </node>
    <node TEXT="10.1 系统级IO" ID="e66NSzzKDy" _mubu_text="%3Cspan%3E10.1%20%E7%B3%BB%E7%BB%9F%E7%BA%A7IO%3C/span%3E" STYLE="bubble" POSITION="default">
      <node TEXT="原理" ID="m2rV5WbqVR" _mubu_text="%3Cspan%3E%E5%8E%9F%E7%90%86%3C/span%3E" STYLE="fork">
        <node TEXT="所有的IO设备（网络，磁盘，终端）都被模型化为文件" ID="sUEPY9KvD2" _mubu_text="%3Cspan%3E%E6%89%80%E6%9C%89%E7%9A%84IO%E8%AE%BE%E5%A4%87%EF%BC%88%E7%BD%91%E7%BB%9C%EF%BC%8C%E7%A3%81%E7%9B%98%EF%BC%8C%E7%BB%88%E7%AB%AF%EF%BC%89%E9%83%BD%E8%A2%AB%E6%A8%A1%E5%9E%8B%E5%8C%96%E4%B8%BA%E6%96%87%E4%BB%B6%3C/span%3E" STYLE="fork"/>
        <node TEXT="文件就是一个字节的序列" ID="uMj3VqDpJi" _mubu_text="%3Cspan%3E%E6%96%87%E4%BB%B6%E5%B0%B1%E6%98%AF%E4%B8%80%E4%B8%AA%E5%AD%97%E8%8A%82%E7%9A%84%E5%BA%8F%E5%88%97%3C/span%3E" STYLE="fork"/>
        <node TEXT="所有的IO操作都被当前当作相应的文件读写" ID="eHj98fZciq" _mubu_text="%3Cspan%3E%E6%89%80%E6%9C%89%E7%9A%84IO%E6%93%8D%E4%BD%9C%E9%83%BD%E8%A2%AB%E5%BD%93%E5%89%8D%E5%BD%93%E4%BD%9C%E7%9B%B8%E5%BA%94%E7%9A%84%E6%96%87%E4%BB%B6%E8%AF%BB%E5%86%99%3C/span%3E" STYLE="fork"/>
      </node>
      <node TEXT="所有输入输出的过程" ID="j28we2fzo1" _mubu_text="%3Cspan%3E%E6%89%80%E6%9C%89%E8%BE%93%E5%85%A5%E8%BE%93%E5%87%BA%E7%9A%84%E8%BF%87%E7%A8%8B%3C/span%3E" STYLE="fork">
        <node TEXT="1.打开文件 " ID="UViTqmML91" _mubu_text="%3Cspan%3E1.%E6%89%93%E5%BC%80%E6%96%87%E4%BB%B6%20%3C/span%3E" STYLE="fork">
          <node TEXT="打开文件，应用程序要求内核打开文件，返回一个小的非负整数描述符" ID="3PLzndKbzt" _mubu_text="%3Cspan%3E%E6%89%93%E5%BC%80%E6%96%87%E4%BB%B6%EF%BC%8C%E5%BA%94%E7%94%A8%E7%A8%8B%E5%BA%8F%E8%A6%81%E6%B1%82%E5%86%85%E6%A0%B8%E6%89%93%E5%BC%80%E6%96%87%E4%BB%B6%EF%BC%8C%E8%BF%94%E5%9B%9E%E4%B8%80%E4%B8%AA%E5%B0%8F%E7%9A%84%E9%9D%9E%E8%B4%9F%E6%95%B4%E6%95%B0%E6%8F%8F%E8%BF%B0%E7%AC%A6%3C/span%3E" STYLE="fork"/>
          <node TEXT="描述符标识该文件" ID="yn2FAqchB5" _mubu_text="%3Cspan%3E%E6%8F%8F%E8%BF%B0%E7%AC%A6%E6%A0%87%E8%AF%86%E8%AF%A5%E6%96%87%E4%BB%B6%3C/span%3E" STYLE="fork"/>
          <node TEXT="内核记录有关打开这个文件的所有信息" ID="rPWDq62k0c" _mubu_text="%3Cspan%3E%E5%86%85%E6%A0%B8%E8%AE%B0%E5%BD%95%E6%9C%89%E5%85%B3%E6%89%93%E5%BC%80%E8%BF%99%E4%B8%AA%E6%96%87%E4%BB%B6%E7%9A%84%E6%89%80%E6%9C%89%E4%BF%A1%E6%81%AF%3C/span%3E" STYLE="fork"/>
          <node TEXT="应用程序只需要记住描述符" ID="aZaWT1n0HL" _mubu_text="%3Cspan%3E%E5%BA%94%E7%94%A8%E7%A8%8B%E5%BA%8F%E5%8F%AA%E9%9C%80%E8%A6%81%E8%AE%B0%E4%BD%8F%E6%8F%8F%E8%BF%B0%E7%AC%A6%3C/span%3E" STYLE="fork"/>
        </node>
        <node TEXT="每个进程开启时的三个打开的文件" ID="g4Y2gpSOSK" _mubu_text="%3Cspan%3E%E6%AF%8F%E4%B8%AA%E8%BF%9B%E7%A8%8B%E5%BC%80%E5%90%AF%E6%97%B6%E7%9A%84%E4%B8%89%E4%B8%AA%E6%89%93%E5%BC%80%E7%9A%84%E6%96%87%E4%BB%B6%3C/span%3E" STYLE="fork">
          <node TEXT="标准输入，描述符0" ID="wWx83pQ7zM" _mubu_text="%3Cspan%3E%E6%A0%87%E5%87%86%E8%BE%93%E5%85%A5%EF%BC%8C%E6%8F%8F%E8%BF%B0%E7%AC%A60%3C/span%3E" STYLE="fork"/>
          <node TEXT="标准输出，描述符1" ID="Gu0it6Oh9j" _mubu_text="%3Cspan%3E%E6%A0%87%E5%87%86%E8%BE%93%E5%87%BA%EF%BC%8C%E6%8F%8F%E8%BF%B0%E7%AC%A61%3C/span%3E" STYLE="fork"/>
          <node TEXT="标准错误。描述符2" ID="bGUPvIvQVt" _mubu_text="%3Cspan%3E%E6%A0%87%E5%87%86%E9%94%99%E8%AF%AF%E3%80%82%E6%8F%8F%E8%BF%B0%E7%AC%A62%3C/span%3E" STYLE="fork"/>
        </node>
        <node TEXT="2.改变当前的文件位置" ID="C2dA4cbt08" _mubu_text="%3Cspan%3E2.%E6%94%B9%E5%8F%98%E5%BD%93%E5%89%8D%E7%9A%84%E6%96%87%E4%BB%B6%E4%BD%8D%E7%BD%AE%3C/span%3E" STYLE="fork">
          <node TEXT="文件位置：从文件开头开始的字节偏移量" ID="336iN3sgax" _mubu_text="%3Cspan%3E%E6%96%87%E4%BB%B6%E4%BD%8D%E7%BD%AE%EF%BC%9A%E4%BB%8E%E6%96%87%E4%BB%B6%E5%BC%80%E5%A4%B4%E5%BC%80%E5%A7%8B%E7%9A%84%E5%AD%97%E8%8A%82%E5%81%8F%E7%A7%BB%E9%87%8F%3C/span%3E" STYLE="fork"/>
        </node>
        <node TEXT="3.读写文件" ID="0r8Wc80ZgN" _mubu_text="%3Cspan%3E3.%E8%AF%BB%E5%86%99%E6%96%87%E4%BB%B6%3C/span%3E" STYLE="fork">
          <node TEXT="读，就是从文件复制若干字节到内存" ID="XWEkDXVSLF" _mubu_text="%3Cspan%3E%E8%AF%BB%EF%BC%8C%E5%B0%B1%E6%98%AF%E4%BB%8E%E6%96%87%E4%BB%B6%E5%A4%8D%E5%88%B6%E8%8B%A5%E5%B9%B2%E5%AD%97%E8%8A%82%E5%88%B0%E5%86%85%E5%AD%98%3C/span%3E" STYLE="fork"/>
          <node TEXT="读结束后，触法EOF条件" ID="XYVdis5xED" _mubu_text="%3Cspan%3E%E8%AF%BB%E7%BB%93%E6%9D%9F%E5%90%8E%EF%BC%8C%E8%A7%A6%E6%B3%95EOF%E6%9D%A1%E4%BB%B6%3C/span%3E" STYLE="fork"/>
          <node TEXT="在文件结尾处并没有明确的EOF符号" ID="KnQfifmcwS" _mubu_text="%3Cspan%3E%E5%9C%A8%E6%96%87%E4%BB%B6%E7%BB%93%E5%B0%BE%E5%A4%84%E5%B9%B6%E6%B2%A1%E6%9C%89%E6%98%8E%E7%A1%AE%E7%9A%84EOF%E7%AC%A6%E5%8F%B7%3C/span%3E" STYLE="fork"/>
        </node>
        <node TEXT="4.关闭文件" ID="dXjlNCvJOT" _mubu_text="%3Cspan%3E4.%E5%85%B3%E9%97%AD%E6%96%87%E4%BB%B6%3C/span%3E" STYLE="fork">
          <node TEXT="内核释放文件打开时创建的数据结构，把描述符恢复到描述符池中" ID="GLxkjGp5Si" _mubu_text="%3Cspan%3E%E5%86%85%E6%A0%B8%E9%87%8A%E6%94%BE%E6%96%87%E4%BB%B6%E6%89%93%E5%BC%80%E6%97%B6%E5%88%9B%E5%BB%BA%E7%9A%84%E6%95%B0%E6%8D%AE%E7%BB%93%E6%9E%84%EF%BC%8C%E6%8A%8A%E6%8F%8F%E8%BF%B0%E7%AC%A6%E6%81%A2%E5%A4%8D%E5%88%B0%E6%8F%8F%E8%BF%B0%E7%AC%A6%E6%B1%A0%E4%B8%AD%3C/span%3E" STYLE="fork"/>
          <node TEXT="无论进程因为什么原因终止，内核都会关闭所有打开的文件，并释放内存" ID="AWgjDdRpon" _mubu_text="%3Cspan%3E%E6%97%A0%E8%AE%BA%E8%BF%9B%E7%A8%8B%E5%9B%A0%E4%B8%BA%E4%BB%80%E4%B9%88%E5%8E%9F%E5%9B%A0%E7%BB%88%E6%AD%A2%EF%BC%8C%E5%86%85%E6%A0%B8%E9%83%BD%E4%BC%9A%E5%85%B3%E9%97%AD%E6%89%80%E6%9C%89%E6%89%93%E5%BC%80%E7%9A%84%E6%96%87%E4%BB%B6%EF%BC%8C%E5%B9%B6%E9%87%8A%E6%94%BE%E5%86%85%E5%AD%98%3C/span%3E" STYLE="fork"/>
        </node>
      </node>
    </node>
    <node TEXT="10.2文件" ID="aZuAvYtMl4" _mubu_text="%3Cspan%3E10.2%E6%96%87%E4%BB%B6%3C/span%3E" STYLE="bubble" POSITION="default">
      <node TEXT="文件类型" ID="V1ny7cAK3a" _mubu_text="%3Cspan%3E%E6%96%87%E4%BB%B6%E7%B1%BB%E5%9E%8B%3C/span%3E" STYLE="fork">
        <node TEXT="普通文件" ID="CF2GaH1ER4" _mubu_text="%3Cspan%3E%E6%99%AE%E9%80%9A%E6%96%87%E4%BB%B6%3C/span%3E" STYLE="fork">
          <node TEXT="包含任意数据" ID="cQa7VPlJgb" _mubu_text="%3Cspan%3E%E5%8C%85%E5%90%AB%E4%BB%BB%E6%84%8F%E6%95%B0%E6%8D%AE%3C/span%3E" STYLE="fork"/>
          <node TEXT="文本文件 ASCII &amp;&amp; Unicode only" ID="3kWvZFbbZw" _mubu_text="%3Cspan%3E%E6%96%87%E6%9C%AC%E6%96%87%E4%BB%B6%20ASCII%20&amp;amp;&amp;amp;%20Unicode%20only%3C/span%3E" STYLE="fork"/>
          <node TEXT="二进制文件 else" ID="De9bg6H3xZ" _mubu_text="%3Cspan%3E%E4%BA%8C%E8%BF%9B%E5%88%B6%E6%96%87%E4%BB%B6%20else%3C/span%3E" STYLE="fork"/>
          <node TEXT="对内核而言，以上两者没什么区别" ID="xDm7EWlSor" _mubu_text="%3Cspan%3E%E5%AF%B9%E5%86%85%E6%A0%B8%E8%80%8C%E8%A8%80%EF%BC%8C%E4%BB%A5%E4%B8%8A%E4%B8%A4%E8%80%85%E6%B2%A1%E4%BB%80%E4%B9%88%E5%8C%BA%E5%88%AB%3C/span%3E" STYLE="fork"/>
        </node>
        <node TEXT="目录" ID="FgV0LoxfcC" _mubu_text="%3Cspan%3E%E7%9B%AE%E5%BD%95%3C/span%3E" STYLE="fork">
          <node TEXT="目录是什么" ID="M4Olynz5V8" _mubu_text="%3Cspan%3E%E7%9B%AE%E5%BD%95%E6%98%AF%E4%BB%80%E4%B9%88%3C/span%3E" STYLE="fork">
            <node TEXT="相关文件组的索引" ID="acVd52gKM6" _mubu_text="%3Cspan%3E%E7%9B%B8%E5%85%B3%E6%96%87%E4%BB%B6%E7%BB%84%E7%9A%84%E7%B4%A2%E5%BC%95%3C/span%3E" STYLE="fork"/>
            <node TEXT="包含一组链接，把文件名映射到文件" ID="D9jm6EaXHm" _mubu_text="%3Cspan%3E%E5%8C%85%E5%90%AB%E4%B8%80%E7%BB%84%E9%93%BE%E6%8E%A5%EF%BC%8C%E6%8A%8A%E6%96%87%E4%BB%B6%E5%90%8D%E6%98%A0%E5%B0%84%E5%88%B0%E6%96%87%E4%BB%B6%3C/span%3E" STYLE="fork"/>
          </node>
          <node TEXT="目录至少含有两个条目" ID="DwmKtuC7wS" _mubu_text="%3Cspan%3E%E7%9B%AE%E5%BD%95%E8%87%B3%E5%B0%91%E5%90%AB%E6%9C%89%E4%B8%A4%E4%B8%AA%E6%9D%A1%E7%9B%AE%3C/span%3E" STYLE="fork">
            <node TEXT="点 指向自身的链接" ID="yAmaWh2AvJ" _mubu_text="%3Cspan%3E%E7%82%B9%20%E6%8C%87%E5%90%91%E8%87%AA%E8%BA%AB%E7%9A%84%E9%93%BE%E6%8E%A5%3C/span%3E" STYLE="fork"/>
            <node TEXT="点点 指向上层的链接" ID="adHJkmHMyO" _mubu_text="%3Cspan%3E%E7%82%B9%E7%82%B9%20%E6%8C%87%E5%90%91%E4%B8%8A%E5%B1%82%E7%9A%84%E9%93%BE%E6%8E%A5%3C/span%3E" STYLE="fork"/>
          </node>
        </node>
        <node TEXT="套接字" ID="OqDSUMEHaK" _mubu_text="%3Cspan%3E%E5%A5%97%E6%8E%A5%E5%AD%97%3C/span%3E" STYLE="fork">
          <node TEXT="用来与另一个进程进行跨网络通信的文件" ID="mEIOLbtMc7" _mubu_text="%3Cspan%3E%E7%94%A8%E6%9D%A5%E4%B8%8E%E5%8F%A6%E4%B8%80%E4%B8%AA%E8%BF%9B%E7%A8%8B%E8%BF%9B%E8%A1%8C%E8%B7%A8%E7%BD%91%E7%BB%9C%E9%80%9A%E4%BF%A1%E7%9A%84%E6%96%87%E4%BB%B6%3C/span%3E" STYLE="fork"/>
        </node>
        <node TEXT="其他文件类型" ID="A9K78sVZRG" _mubu_text="%3Cspan%3E%E5%85%B6%E4%BB%96%E6%96%87%E4%BB%B6%E7%B1%BB%E5%9E%8B%3C/span%3E" STYLE="fork"/>
      </node>
      <node TEXT="每个进程都有一个当前工作路径，就是pwd的" ID="aVnJtI0WHN" _mubu_text="%3Cspan%3E%E6%AF%8F%E4%B8%AA%E8%BF%9B%E7%A8%8B%E9%83%BD%E6%9C%89%E4%B8%80%E4%B8%AA%E5%BD%93%E5%89%8D%E5%B7%A5%E4%BD%9C%E8%B7%AF%E5%BE%84%EF%BC%8C%E5%B0%B1%E6%98%AFpwd%E7%9A%84%3C/span%3E" STYLE="fork"/>
      <node TEXT="路径名" ID="7bB8M8USUS" _mubu_text="%3Cspan%3E%E8%B7%AF%E5%BE%84%E5%90%8D%3C/span%3E" STYLE="fork">
        <node TEXT="绝对路径" ID="ZveV2THJDP" _mubu_text="%3Cspan%3E%E7%BB%9D%E5%AF%B9%E8%B7%AF%E5%BE%84%3C/span%3E" STYLE="fork">
          <node TEXT="以/开始" ID="FRkhmnYsLC" _mubu_text="%3Cspan%3E%E4%BB%A5/%E5%BC%80%E5%A7%8B%3C/span%3E" STYLE="fork"/>
        </node>
        <node TEXT="相对路径" ID="Ou9nHHMOff" _mubu_text="%3Cspan%3E%E7%9B%B8%E5%AF%B9%E8%B7%AF%E5%BE%84%3C/span%3E" STYLE="fork">
          <node TEXT="以点点开始" ID="vGiqVdg1aO" _mubu_text="%3Cspan%3E%E4%BB%A5%E7%82%B9%E7%82%B9%E5%BC%80%E5%A7%8B%3C/span%3E" STYLE="fork"/>
          <node TEXT="或者以点开始" ID="ohuHcpWnxF" _mubu_text="%3Cspan%3E%E6%88%96%E8%80%85%E4%BB%A5%E7%82%B9%E5%BC%80%E5%A7%8B%3C/span%3E" STYLE="fork"/>
        </node>
      </node>
    </node>
    <node TEXT="10.3 打开和关闭文件" ID="3lDC1n3KfH" _mubu_text="%3Cspan%3E10.3%20%E6%89%93%E5%BC%80%E5%92%8C%E5%85%B3%E9%97%AD%E6%96%87%E4%BB%B6%3C/span%3E" STYLE="bubble" POSITION="default">
      <node TEXT="open 函数三个参数，文件名，两个权限位？" ID="kNBWNmGEHe" _mubu_text="%3Cspan%3Eopen%20%E5%87%BD%E6%95%B0%E4%B8%89%E4%B8%AA%E5%8F%82%E6%95%B0%EF%BC%8C%E6%96%87%E4%BB%B6%E5%90%8D%EF%BC%8C%E4%B8%A4%E4%B8%AA%E6%9D%83%E9%99%90%E4%BD%8D%EF%BC%9F%3C/span%3E" STYLE="fork">
        <node TEXT="功能-打开已有文件/创建新文件" ID="sQNG6D7I00" _mubu_text="%3Cspan%3E%E5%8A%9F%E8%83%BD-%E6%89%93%E5%BC%80%E5%B7%B2%E6%9C%89%E6%96%87%E4%BB%B6/%E5%88%9B%E5%BB%BA%E6%96%B0%E6%96%87%E4%BB%B6%3C/span%3E" STYLE="fork"/>
      </node>
      <node TEXT="close 一个参数" ID="gBqnFkPsB5" _mubu_text="%3Cspan%3Eclose%20%E4%B8%80%E4%B8%AA%E5%8F%82%E6%95%B0%3C/span%3E" STYLE="fork">
        <node TEXT="关闭已关闭的文件是灾难性的" ID="0Swn8pGLRa" _mubu_text="%3Cspan%3E%E5%85%B3%E9%97%AD%E5%B7%B2%E5%85%B3%E9%97%AD%E7%9A%84%E6%96%87%E4%BB%B6%E6%98%AF%E7%81%BE%E9%9A%BE%E6%80%A7%E7%9A%84%3C/span%3E" STYLE="fork"/>
      </node>
      <node TEXT="书上谈了一些权限参数相关的宏，但PPT和上课并没有讲，算了我不看这个了，就是一些权限和访问方式相关的宏" ID="fSmCZSOGaH" _mubu_text="%3Cspan%20class=%22bold%20text-color-red%22%3E%E4%B9%A6%E4%B8%8A%E8%B0%88%E4%BA%86%E4%B8%80%E4%BA%9B%E6%9D%83%E9%99%90%E5%8F%82%E6%95%B0%E7%9B%B8%E5%85%B3%E7%9A%84%E5%AE%8F%EF%BC%8C%E4%BD%86PPT%E5%92%8C%E4%B8%8A%E8%AF%BE%E5%B9%B6%E6%B2%A1%E6%9C%89%E8%AE%B2%EF%BC%8C%E7%AE%97%E4%BA%86%E6%88%91%E4%B8%8D%E7%9C%8B%E8%BF%99%E4%B8%AA%E4%BA%86%EF%BC%8C%E5%B0%B1%E6%98%AF%E4%B8%80%E4%BA%9B%E6%9D%83%E9%99%90%E5%92%8C%E8%AE%BF%E9%97%AE%E6%96%B9%E5%BC%8F%E7%9B%B8%E5%85%B3%E7%9A%84%E5%AE%8F%3C/span%3E" STYLE="fork"/>
    </node>
    <node TEXT="10.4 读和写" ID="gATfvTJh8A" _mubu_text="%3Cspan%3E10.4%20%E8%AF%BB%E5%92%8C%E5%86%99%3C/span%3E" STYLE="bubble" POSITION="default">
      <node TEXT="read and write" ID="vNH0VVcczE" _mubu_text="%3Cspan%3Eread%20and%20write%3C/span%3E" STYLE="fork">
        <node TEXT="read函数" ID="Ibd25xC7gN" _mubu_text="%3Cspan%3Eread%E5%87%BD%E6%95%B0%3C/span%3E" STYLE="fork">
          <node TEXT="应用程序使用read实现读" ID="2lul7XP23Y" _mubu_text="%3Cspan%3E%E5%BA%94%E7%94%A8%E7%A8%8B%E5%BA%8F%E4%BD%BF%E7%94%A8read%E5%AE%9E%E7%8E%B0%E8%AF%BB%3C/span%3E" STYLE="fork"/>
          <node TEXT="表示复制最多n个字节到内存位置buf" ID="AXkd1MQG82" _mubu_text="%3Cspan%3E%E8%A1%A8%E7%A4%BA%E5%A4%8D%E5%88%B6%E6%9C%80%E5%A4%9An%E4%B8%AA%E5%AD%97%E8%8A%82%E5%88%B0%E5%86%85%E5%AD%98%E4%BD%8D%E7%BD%AEbuf%3C/span%3E" STYLE="fork"/>
          <node TEXT="代码示例：用read和write对终端进行读写，主要还是看一下思想。这里并没哟处理写的返回值，有可能是封装函数没有返回值" ID="g2dRfKo2O8" _mubu_text="%3Cspan%3E%E4%BB%A3%E7%A0%81%E7%A4%BA%E4%BE%8B%EF%BC%9A%E7%94%A8read%E5%92%8Cwrite%E5%AF%B9%E7%BB%88%E7%AB%AF%E8%BF%9B%E8%A1%8C%E8%AF%BB%E5%86%99%EF%BC%8C%E4%B8%BB%E8%A6%81%E8%BF%98%E6%98%AF%E7%9C%8B%E4%B8%80%E4%B8%8B%E6%80%9D%E6%83%B3%E3%80%82%E8%BF%99%E9%87%8C%E5%B9%B6%E6%B2%A1%E5%93%9F%E5%A4%84%E7%90%86%E5%86%99%E7%9A%84%E8%BF%94%E5%9B%9E%E5%80%BC%EF%BC%8C%E6%9C%89%E5%8F%AF%E8%83%BD%E6%98%AF%E5%B0%81%E8%A3%85%E5%87%BD%E6%95%B0%E6%B2%A1%E6%9C%89%E8%BF%94%E5%9B%9E%E5%80%BC%3C/span%3E" STYLE="fork"/>
          <node TEXT="返回-1表示错误，返回0表示EOF，其他情况返回读的字节值" ID="vO7W3TkIJH" _mubu_text="%3Cspan%3E%E8%BF%94%E5%9B%9E-1%E8%A1%A8%E7%A4%BA%E9%94%99%E8%AF%AF%EF%BC%8C%E8%BF%94%E5%9B%9E0%E8%A1%A8%E7%A4%BAEOF%EF%BC%8C%E5%85%B6%E4%BB%96%E6%83%85%E5%86%B5%E8%BF%94%E5%9B%9E%E8%AF%BB%E7%9A%84%E5%AD%97%E8%8A%82%E5%80%BC%3C/span%3E" STYLE="fork"/>
        </node>
        <node TEXT="write函数" ID="3qwUreeVG1" _mubu_text="%3Cspan%3Ewrite%E5%87%BD%E6%95%B0%3C/span%3E" STYLE="fork">
          <node TEXT="应用程序用write实现写" ID="DZmsJMJspw" _mubu_text="%3Cspan%3E%E5%BA%94%E7%94%A8%E7%A8%8B%E5%BA%8F%E7%94%A8write%E5%AE%9E%E7%8E%B0%E5%86%99%3C/span%3E" STYLE="fork"/>
          <node TEXT="从内存位置buf复制最多n个字节到fd表示的当前文件位置" ID="6S6Nb0pCGg" _mubu_text="%3Cspan%3E%E4%BB%8E%E5%86%85%E5%AD%98%E4%BD%8D%E7%BD%AEbuf%E5%A4%8D%E5%88%B6%E6%9C%80%E5%A4%9An%E4%B8%AA%E5%AD%97%E8%8A%82%E5%88%B0fd%E8%A1%A8%E7%A4%BA%E7%9A%84%E5%BD%93%E5%89%8D%E6%96%87%E4%BB%B6%E4%BD%8D%E7%BD%AE%3C/span%3E" STYLE="fork"/>
          <node TEXT="ret n, ret -1 when error" ID="pEy8QUFaky" _mubu_text="%3Cspan%3Eret%20n,%20ret%20-1%20when%20error%3C/span%3E" STYLE="fork"/>
        </node>
        <node TEXT="通过Iseek函数，可以修改在当前文件中的位置，这不在我们讲述的范围内" ID="FILVUOPXf1" _mubu_text="%3Cspan%3E%E9%80%9A%E8%BF%87Iseek%E5%87%BD%E6%95%B0%EF%BC%8C%E5%8F%AF%E4%BB%A5%E4%BF%AE%E6%94%B9%E5%9C%A8%E5%BD%93%E5%89%8D%E6%96%87%E4%BB%B6%E4%B8%AD%E7%9A%84%E4%BD%8D%E7%BD%AE%EF%BC%8C%E8%BF%99%E4%B8%8D%E5%9C%A8%E6%88%91%E4%BB%AC%E8%AE%B2%E8%BF%B0%E7%9A%84%E8%8C%83%E5%9B%B4%E5%86%85%3C/span%3E" STYLE="fork"/>
      </node>
      <node TEXT="潜在的问题，为什么会发生返回时 不足值/短计数呢" ID="VA6Jp8ytz8" _mubu_text="%3Cspan%3E%E6%BD%9C%E5%9C%A8%E7%9A%84%E9%97%AE%E9%A2%98%EF%BC%8C%E4%B8%BA%E4%BB%80%E4%B9%88%E4%BC%9A%E5%8F%91%E7%94%9F%E8%BF%94%E5%9B%9E%E6%97%B6%20%E4%B8%8D%E8%B6%B3%E5%80%BC/%E7%9F%AD%E8%AE%A1%E6%95%B0%E5%91%A2%3C/span%3E" STYLE="fork"/>
      <node TEXT="1.遇到EOF" ID="4v7jHdffvQ" _mubu_text="%3Cspan%3E1.%E9%81%87%E5%88%B0EOF%3C/span%3E" STYLE="fork">
        <node TEXT="如果文件剩的比想读的少，去read,提前遇到了EOF,只能读并返回剩余的字数" ID="TbpA4Nm8St" _mubu_text="%3Cspan%3E%E5%A6%82%E6%9E%9C%E6%96%87%E4%BB%B6%E5%89%A9%E7%9A%84%E6%AF%94%E6%83%B3%E8%AF%BB%E7%9A%84%E5%B0%91%EF%BC%8C%E5%8E%BBread,%E6%8F%90%E5%89%8D%E9%81%87%E5%88%B0%E4%BA%86EOF,%E5%8F%AA%E8%83%BD%E8%AF%BB%E5%B9%B6%E8%BF%94%E5%9B%9E%E5%89%A9%E4%BD%99%E7%9A%84%E5%AD%97%E6%95%B0%3C/span%3E" STYLE="fork"/>
      </node>
      <node TEXT="2.从终端读" ID="hCkUs2HEXZ" _mubu_text="%3Cspan%3E2.%E4%BB%8E%E7%BB%88%E7%AB%AF%E8%AF%BB%3C/span%3E" STYLE="fork">
        <node TEXT="从终端是按照行读的" ID="IzOxd0LOv3" _mubu_text="%3Cspan%3E%E4%BB%8E%E7%BB%88%E7%AB%AF%E6%98%AF%E6%8C%89%E7%85%A7%E8%A1%8C%E8%AF%BB%E7%9A%84%3C/span%3E" STYLE="fork"/>
        <node TEXT="所以只返回一行的字数" ID="3J6I8HmWva" _mubu_text="%3Cspan%3E%E6%89%80%E4%BB%A5%E5%8F%AA%E8%BF%94%E5%9B%9E%E4%B8%80%E8%A1%8C%E7%9A%84%E5%AD%97%E6%95%B0%3C/span%3E" STYLE="fork"/>
      </node>
      <node TEXT="3.读写socket" ID="96q99MzpCA" _mubu_text="%3Cspan%3E3.%E8%AF%BB%E5%86%99socket%3C/span%3E" STYLE="fork">
        <node TEXT="因为网络延迟等等" ID="No7vO6nV5O" _mubu_text="%3Cspan%3E%E5%9B%A0%E4%B8%BA%E7%BD%91%E7%BB%9C%E5%BB%B6%E8%BF%9F%E7%AD%89%E7%AD%89%3C/span%3E" STYLE="fork"/>
      </node>
      <node TEXT="如果我们写磁盘文件，或者读磁盘文件没遇到EOF，那么永远不会发生短计数" ID="R1acvzwRkP" _mubu_text="%3Cspan%3E%E5%A6%82%E6%9E%9C%E6%88%91%E4%BB%AC%E5%86%99%E7%A3%81%E7%9B%98%E6%96%87%E4%BB%B6%EF%BC%8C%E6%88%96%E8%80%85%E8%AF%BB%E7%A3%81%E7%9B%98%E6%96%87%E4%BB%B6%E6%B2%A1%E9%81%87%E5%88%B0EOF%EF%BC%8C%E9%82%A3%E4%B9%88%E6%B0%B8%E8%BF%9C%E4%B8%8D%E4%BC%9A%E5%8F%91%E7%94%9F%E7%9F%AD%E8%AE%A1%E6%95%B0%3C/span%3E" STYLE="fork"/>
      <node TEXT="不足值的处理" ID="JG4XAFBKjb" _mubu_text="%3Cspan%3E%E4%B8%8D%E8%B6%B3%E5%80%BC%E7%9A%84%E5%A4%84%E7%90%86%3C/span%3E" STYLE="fork">
        <node TEXT="如果我们想让程序健壮" ID="iaxGv2XYrW" _mubu_text="%3Cspan%3E%E5%A6%82%E6%9E%9C%E6%88%91%E4%BB%AC%E6%83%B3%E8%AE%A9%E7%A8%8B%E5%BA%8F%E5%81%A5%E5%A3%AE%3C/span%3E" STYLE="fork"/>
        <node TEXT="我们需要反复调用read和write，直到所有字节传输完毕" ID="t1WLUWnrLU" _mubu_text="%3Cspan%3E%E6%88%91%E4%BB%AC%E9%9C%80%E8%A6%81%E5%8F%8D%E5%A4%8D%E8%B0%83%E7%94%A8read%E5%92%8Cwrite%EF%BC%8C%E7%9B%B4%E5%88%B0%E6%89%80%E6%9C%89%E5%AD%97%E8%8A%82%E4%BC%A0%E8%BE%93%E5%AE%8C%E6%AF%95%3C/span%3E" STYLE="fork"/>
      </node>
    </node>
    <node TEXT="10.5 RIO" ID="o80Hn9wxeS" _mubu_text="%3Cspan%3E10.5%20RIO%3C/span%3E" STYLE="bubble" POSITION="default">
      <node TEXT="算了，下次再学吧——后记，12.10 我来了" ID="aAgrQGdbNv" _mubu_text="%3Cspan%3E%E7%AE%97%E4%BA%86%EF%BC%8C%E4%B8%8B%E6%AC%A1%E5%86%8D%E5%AD%A6%E5%90%A7%E2%80%94%E2%80%94%E5%90%8E%E8%AE%B0%EF%BC%8C12.10%20%E6%88%91%E6%9D%A5%E4%BA%86%3C/span%3E" STYLE="fork"/>
      <node TEXT="0 我们讲述一个IO包，称为RIO，很健壮，自动处理上文中的不足值问题，用在网络编程中比较多" ID="iPMZsmLuH0" _mubu_text="%3Cspan%3E0%20%E6%88%91%E4%BB%AC%E8%AE%B2%E8%BF%B0%E4%B8%80%E4%B8%AAIO%E5%8C%85%EF%BC%8C%E7%A7%B0%E4%B8%BARIO%EF%BC%8C%E5%BE%88%E5%81%A5%E5%A3%AE%EF%BC%8C%E8%87%AA%E5%8A%A8%E5%A4%84%E7%90%86%E4%B8%8A%E6%96%87%E4%B8%AD%E7%9A%84%E4%B8%8D%E8%B6%B3%E5%80%BC%E9%97%AE%E9%A2%98%EF%BC%8C%E7%94%A8%E5%9C%A8%E7%BD%91%E7%BB%9C%E7%BC%96%E7%A8%8B%E4%B8%AD%E6%AF%94%E8%BE%83%E5%A4%9A%3C/span%3E" STYLE="fork"/>
      <node TEXT="1 无缓冲输入输出函数" ID="6feOrq5sOA" _mubu_text="%3Cspan%20class=%22bold%20text-color-red%22%3E1%20%E6%97%A0%E7%BC%93%E5%86%B2%E8%BE%93%E5%85%A5%E8%BE%93%E5%87%BA%E5%87%BD%E6%95%B0%3C/span%3E" STYLE="fork"/>
      <node TEXT="2 带缓冲输入输出函数" ID="izfR7Aoc5E" _mubu_text="%3Cspan%20class=%22bold%20text-color-red%22%3E2%20%E5%B8%A6%E7%BC%93%E5%86%B2%E8%BE%93%E5%85%A5%E8%BE%93%E5%87%BA%E5%87%BD%E6%95%B0%3C/span%3E" STYLE="fork"/>
      <node TEXT="这里没什么可写的，大概就是关于无缓冲没说什么，关于有缓冲提出了rio缓冲区的概念，定义了rio_buffer结构体，这个结构题有四个成员，分别是fd，指向缓冲区的指针，指向缓冲区下一个要读位置的指针，和缓冲区未读字节的计数" ID="A2S07DTUmL" _mubu_text="%3Cspan%3E%E8%BF%99%E9%87%8C%E6%B2%A1%E4%BB%80%E4%B9%88%E5%8F%AF%E5%86%99%E7%9A%84%EF%BC%8C%E5%A4%A7%E6%A6%82%E5%B0%B1%E6%98%AF%E5%85%B3%E4%BA%8E%E6%97%A0%E7%BC%93%E5%86%B2%E6%B2%A1%E8%AF%B4%E4%BB%80%E4%B9%88%EF%BC%8C%E5%85%B3%E4%BA%8E%E6%9C%89%E7%BC%93%E5%86%B2%E6%8F%90%E5%87%BA%E4%BA%86rio%E7%BC%93%E5%86%B2%E5%8C%BA%E7%9A%84%E6%A6%82%E5%BF%B5%EF%BC%8C%E5%AE%9A%E4%B9%89%E4%BA%86rio_buffer%E7%BB%93%E6%9E%84%E4%BD%93%EF%BC%8C%E8%BF%99%E4%B8%AA%E7%BB%93%E6%9E%84%E9%A2%98%E6%9C%89%E5%9B%9B%E4%B8%AA%E6%88%90%E5%91%98%EF%BC%8C%E5%88%86%E5%88%AB%E6%98%AFfd%EF%BC%8C%E6%8C%87%E5%90%91%E7%BC%93%E5%86%B2%E5%8C%BA%E7%9A%84%E6%8C%87%E9%92%88%EF%BC%8C%E6%8C%87%E5%90%91%E7%BC%93%E5%86%B2%E5%8C%BA%E4%B8%8B%E4%B8%80%E4%B8%AA%E8%A6%81%E8%AF%BB%E4%BD%8D%E7%BD%AE%E7%9A%84%E6%8C%87%E9%92%88%EF%BC%8C%E5%92%8C%E7%BC%93%E5%86%B2%E5%8C%BA%E6%9C%AA%E8%AF%BB%E5%AD%97%E8%8A%82%E7%9A%84%E8%AE%A1%E6%95%B0%3C/span%3E" STYLE="fork"/>
      <node TEXT="相关的函数带b后缀的是带缓冲的输入输出函数，其他都是无缓冲的" ID="CgHhbuaxkl" _mubu_text="%3Cspan%3E%E7%9B%B8%E5%85%B3%E7%9A%84%E5%87%BD%E6%95%B0%E5%B8%A6b%E5%90%8E%E7%BC%80%E7%9A%84%E6%98%AF%E5%B8%A6%E7%BC%93%E5%86%B2%E7%9A%84%E8%BE%93%E5%85%A5%E8%BE%93%E5%87%BA%E5%87%BD%E6%95%B0%EF%BC%8C%E5%85%B6%E4%BB%96%E9%83%BD%E6%98%AF%E6%97%A0%E7%BC%93%E5%86%B2%E7%9A%84%3C/span%3E" STYLE="fork"/>
      <node TEXT="围绕缓冲区我们对输入输出函数中的各种可能的异常情况进行了一系列封装" ID="R5PuXuywsy" _mubu_text="%3Cspan%3E%E5%9B%B4%E7%BB%95%E7%BC%93%E5%86%B2%E5%8C%BA%E6%88%91%E4%BB%AC%E5%AF%B9%E8%BE%93%E5%85%A5%E8%BE%93%E5%87%BA%E5%87%BD%E6%95%B0%E4%B8%AD%E7%9A%84%E5%90%84%E7%A7%8D%E5%8F%AF%E8%83%BD%E7%9A%84%E5%BC%82%E5%B8%B8%E6%83%85%E5%86%B5%E8%BF%9B%E8%A1%8C%E4%BA%86%E4%B8%80%E7%B3%BB%E5%88%97%E5%B0%81%E8%A3%85%3C/span%3E" STYLE="fork"/>
    </node>
    <node TEXT="10.6 读取文件元数据" ID="uOIf8A7Orz" _mubu_text="%3Cspan%20class=%22bold%22%3E10.6%20%E8%AF%BB%E5%8F%96%E6%96%87%E4%BB%B6%E5%85%83%E6%95%B0%E6%8D%AE%3C/span%3E" STYLE="bubble" POSITION="default">
      <node TEXT="元数据是关于数据的数据，本节中特指关于文件的信息" ID="LQKsWHVCBg" _mubu_text="%3Cspan%3E%E5%85%83%E6%95%B0%E6%8D%AE%E6%98%AF%E5%85%B3%E4%BA%8E%E6%95%B0%E6%8D%AE%E7%9A%84%E6%95%B0%E6%8D%AE%EF%BC%8C%E6%9C%AC%E8%8A%82%E4%B8%AD%E7%89%B9%E6%8C%87%E5%85%B3%E4%BA%8E%E6%96%87%E4%BB%B6%E7%9A%84%E4%BF%A1%E6%81%AF%3C/span%3E" STYLE="fork"/>
      <node TEXT="我们可以用stat和fstat函数，检索到关于文件的信息" ID="SYYomFT9Mt" _mubu_text="%3Cspan%3E%E6%88%91%E4%BB%AC%E5%8F%AF%E4%BB%A5%E7%94%A8stat%E5%92%8Cfstat%E5%87%BD%E6%95%B0%EF%BC%8C%E6%A3%80%E7%B4%A2%E5%88%B0%E5%85%B3%E4%BA%8E%E6%96%87%E4%BB%B6%E7%9A%84%E4%BF%A1%E6%81%AF%3C/span%3E" STYLE="fork"/>
      <node TEXT="在以后考虑web服务器时候，我们会遇到stat数据结构中st_mode st_size成员" ID="HrkWBVLSiq" _mubu_text="%3Cspan%3E%E5%9C%A8%E4%BB%A5%E5%90%8E%E8%80%83%E8%99%91web%E6%9C%8D%E5%8A%A1%E5%99%A8%E6%97%B6%E5%80%99%EF%BC%8C%E6%88%91%E4%BB%AC%E4%BC%9A%E9%81%87%E5%88%B0stat%E6%95%B0%E6%8D%AE%E7%BB%93%E6%9E%84%E4%B8%ADst_mode%20st_size%E6%88%90%E5%91%98%3C/span%3E" STYLE="fork"/>
      <node TEXT="往后一小段也没讲" ID="ICmVAydqyP" _mubu_text="%3Cspan%3E%E5%BE%80%E5%90%8E%E4%B8%80%E5%B0%8F%E6%AE%B5%E4%B9%9F%E6%B2%A1%E8%AE%B2%3C/span%3E" STYLE="fork"/>
    </node>
    <node TEXT="10.7 读取目录内容" ID="eWwRbaB90Q" _mubu_text="%3Cspan%20class=%22bold%22%3E10.7%20%E8%AF%BB%E5%8F%96%E7%9B%AE%E5%BD%95%E5%86%85%E5%AE%B9%3C/span%3E" STYLE="bubble" POSITION="default">
      <node TEXT="首先使用opendir函数" ID="FGPe7rMo17" _mubu_text="%3Cspan%3E%E9%A6%96%E5%85%88%E4%BD%BF%E7%94%A8opendir%E5%87%BD%E6%95%B0%3C/span%3E" STYLE="fork"/>
      <node TEXT="然后是readdir函数" ID="dZo7XPO6FD" _mubu_text="%3Cspan%3E%E7%84%B6%E5%90%8E%E6%98%AFreaddir%E5%87%BD%E6%95%B0%3C/span%3E" STYLE="fork">
        <node TEXT="如果储存返回NULL，并设置errno" ID="sW2Nj0x84g" _mubu_text="%3Cspan%3E%E5%A6%82%E6%9E%9C%E5%82%A8%E5%AD%98%E8%BF%94%E5%9B%9ENULL%EF%BC%8C%E5%B9%B6%E8%AE%BE%E7%BD%AEerrno%3C/span%3E" STYLE="fork"/>
      </node>
      <node TEXT="最后是closedir函数" ID="Y0xYjFAYSr" _mubu_text="%3Cspan%3E%E6%9C%80%E5%90%8E%E6%98%AFclosedir%E5%87%BD%E6%95%B0%3C/span%3E" STYLE="fork"/>
      <node TEXT="读取文件的代码示例" ID="Sc8SsiFaCn" _mubu_text="%3Cspan%3E%E8%AF%BB%E5%8F%96%E6%96%87%E4%BB%B6%E7%9A%84%E4%BB%A3%E7%A0%81%E7%A4%BA%E4%BE%8B%3C/span%3E" STYLE="fork"/>
    </node>
    <node TEXT="10.8 共享文件" ID="RKKksjdpBh" _mubu_text="%3Cspan%3E10.8%20%E5%85%B1%E4%BA%AB%E6%96%87%E4%BB%B6%3C/span%3E" STYLE="bubble" POSITION="default">
      <node TEXT="三个数据结构——在Linux内核中，三个用来表示打开文件的数据结构" ID="C6lIQIvoei" _mubu_text="%3Cspan%3E%E4%B8%89%E4%B8%AA%E6%95%B0%E6%8D%AE%E7%BB%93%E6%9E%84%E2%80%94%E2%80%94%E5%9C%A8Linux%E5%86%85%E6%A0%B8%E4%B8%AD%EF%BC%8C%E4%B8%89%E4%B8%AA%E7%94%A8%E6%9D%A5%E8%A1%A8%E7%A4%BA%E6%89%93%E5%BC%80%E6%96%87%E4%BB%B6%E7%9A%84%E6%95%B0%E6%8D%AE%E7%BB%93%E6%9E%84%3C/span%3E" STYLE="fork">
        <node TEXT="描述符表" ID="1o54G09LNx" _mubu_text="%3Cspan%3E%E6%8F%8F%E8%BF%B0%E7%AC%A6%E8%A1%A8%3C/span%3E" STYLE="fork">
          <node TEXT="每个对应单个进程" ID="AaMnhMWeHg" _mubu_text="%3Cspan%3E%E6%AF%8F%E4%B8%AA%E5%AF%B9%E5%BA%94%E5%8D%95%E4%B8%AA%E8%BF%9B%E7%A8%8B%3C/span%3E" STYLE="fork"/>
          <node TEXT="由进程打开的文件标识符索引" ID="G16R30zJhG" _mubu_text="%3Cspan%3E%E7%94%B1%E8%BF%9B%E7%A8%8B%E6%89%93%E5%BC%80%E7%9A%84%E6%96%87%E4%BB%B6%E6%A0%87%E8%AF%86%E7%AC%A6%E7%B4%A2%E5%BC%95%3C/span%3E" STYLE="fork"/>
          <node TEXT="表项指向文件表的表项" ID="NpOk2ZnPkv" _mubu_text="%3Cspan%3E%E8%A1%A8%E9%A1%B9%E6%8C%87%E5%90%91%E6%96%87%E4%BB%B6%E8%A1%A8%E7%9A%84%E8%A1%A8%E9%A1%B9%3C/span%3E" STYLE="fork"/>
        </node>
        <node TEXT="文件表" ID="zlmaxcGxSz" _mubu_text="%3Cspan%3E%E6%96%87%E4%BB%B6%E8%A1%A8%3C/span%3E" STYLE="fork">
          <node TEXT="所有进程共享" ID="yxVs5hynMa" _mubu_text="%3Cspan%3E%E6%89%80%E6%9C%89%E8%BF%9B%E7%A8%8B%E5%85%B1%E4%BA%AB%3C/span%3E" STYLE="fork"/>
          <node TEXT="内容" ID="OEdV7cqZ8u" _mubu_text="%3Cspan%3E%E5%86%85%E5%AE%B9%3C/span%3E" STYLE="fork">
            <node TEXT="当前文件位置" ID="jM7z9ysvr4" _mubu_text="%3Cspan%3E%E5%BD%93%E5%89%8D%E6%96%87%E4%BB%B6%E4%BD%8D%E7%BD%AE%3C/span%3E" STYLE="fork"/>
            <node TEXT="引用计数（指向它的描述符表表项数" ID="g8Mw4cHwpN" _mubu_text="%3Cspan%3E%E5%BC%95%E7%94%A8%E8%AE%A1%E6%95%B0%EF%BC%88%E6%8C%87%E5%90%91%E5%AE%83%E7%9A%84%E6%8F%8F%E8%BF%B0%E7%AC%A6%E8%A1%A8%E8%A1%A8%E9%A1%B9%E6%95%B0%3C/span%3E" STYLE="fork"/>
            <node TEXT="指向v-node表对应表项的指针" ID="l2mTZPjVBG" _mubu_text="%3Cspan%3E%E6%8C%87%E5%90%91v-node%E8%A1%A8%E5%AF%B9%E5%BA%94%E8%A1%A8%E9%A1%B9%E7%9A%84%E6%8C%87%E9%92%88%3C/span%3E" STYLE="fork"/>
          </node>
          <node TEXT="如果引用计数为零，内核会删除这个表项" ID="KRzqpOJjMs" _mubu_text="%3Cspan%3E%E5%A6%82%E6%9E%9C%E5%BC%95%E7%94%A8%E8%AE%A1%E6%95%B0%E4%B8%BA%E9%9B%B6%EF%BC%8C%E5%86%85%E6%A0%B8%E4%BC%9A%E5%88%A0%E9%99%A4%E8%BF%99%E4%B8%AA%E8%A1%A8%E9%A1%B9%3C/span%3E" STYLE="fork"/>
        </node>
        <node TEXT="v-node表" ID="Bc0WfjNbUA" _mubu_text="%3Cspan%3Ev-node%E8%A1%A8%3C/span%3E" STYLE="fork">
          <node TEXT="所有进程共享" ID="zpEXxUNGOb" _mubu_text="%3Cspan%3E%E6%89%80%E6%9C%89%E8%BF%9B%E7%A8%8B%E5%85%B1%E4%BA%AB%3C/span%3E" STYLE="fork"/>
          <node TEXT="包含stat结构（元数据 中的大部分信息" ID="PCYEWs0uKg" _mubu_text="%3Cspan%3E%E5%8C%85%E5%90%ABstat%E7%BB%93%E6%9E%84%EF%BC%88%E5%85%83%E6%95%B0%E6%8D%AE%20%E4%B8%AD%E7%9A%84%E5%A4%A7%E9%83%A8%E5%88%86%E4%BF%A1%E6%81%AF%3C/span%3E" STYLE="fork"/>
        </node>
        <node TEXT="我们看三个图来理解他们的关系" ID="GiuzWG2xmR" _mubu_text="%3Cspan%20class=%22%20text-color-blue%22%3E%E6%88%91%E4%BB%AC%E7%9C%8B%E4%B8%89%E4%B8%AA%E5%9B%BE%E6%9D%A5%E7%90%86%E8%A7%A3%E4%BB%96%E4%BB%AC%E7%9A%84%E5%85%B3%E7%B3%BB%3C/span%3E" STYLE="fork">
          <node TEXT="注意到：描述符表表项和打开文件表表项始终是一一对应的" ID="Ag5sNJtObM" _mubu_text="%3Cspan%3E%E6%B3%A8%E6%84%8F%E5%88%B0%EF%BC%9A%E6%8F%8F%E8%BF%B0%E7%AC%A6%E8%A1%A8%E8%A1%A8%E9%A1%B9%E5%92%8C%E6%89%93%E5%BC%80%E6%96%87%E4%BB%B6%E8%A1%A8%E8%A1%A8%E9%A1%B9%E5%A7%8B%E7%BB%88%E6%98%AF%E4%B8%80%E4%B8%80%E5%AF%B9%E5%BA%94%E7%9A%84%3C/span%3E" STYLE="fork"/>
          <node TEXT="三个表的关系图" ID="5Ovi1wxTzw" _mubu_text="%3Cspan%20class=%22%20text-color-blue%22%3E%E4%B8%89%E4%B8%AA%E8%A1%A8%E7%9A%84%E5%85%B3%E7%B3%BB%E5%9B%BE%3C/span%3E" STYLE="fork"/>
          <node TEXT="一个进程通过不同的描述符两次打开同一文件，两个描述符表项，指向两个打开文件表表项，指向同一个v-node表表项" ID="EHyTLpFBrw" _mubu_text="%3Cspan%20class=%22%20text-color-blue%22%3E%E4%B8%80%E4%B8%AA%E8%BF%9B%E7%A8%8B%E9%80%9A%E8%BF%87%E4%B8%8D%E5%90%8C%E7%9A%84%E6%8F%8F%E8%BF%B0%E7%AC%A6%E4%B8%A4%E6%AC%A1%E6%89%93%E5%BC%80%E5%90%8C%E4%B8%80%E6%96%87%E4%BB%B6%EF%BC%8C%E4%B8%A4%E4%B8%AA%E6%8F%8F%E8%BF%B0%E7%AC%A6%E8%A1%A8%E9%A1%B9%EF%BC%8C%E6%8C%87%E5%90%91%E4%B8%A4%E4%B8%AA%E6%89%93%E5%BC%80%E6%96%87%E4%BB%B6%E8%A1%A8%E8%A1%A8%E9%A1%B9%EF%BC%8C%E6%8C%87%E5%90%91%E5%90%8C%E4%B8%80%E4%B8%AAv-node%E8%A1%A8%E8%A1%A8%E9%A1%B9%3C/span%3E" STYLE="fork">
            <node TEXT="这样可以有不同的文件指针，从不同的位置开始读写" ID="p3nePiNALg" _mubu_text="%3Cspan%3E%E8%BF%99%E6%A0%B7%E5%8F%AF%E4%BB%A5%E6%9C%89%E4%B8%8D%E5%90%8C%E7%9A%84%E6%96%87%E4%BB%B6%E6%8C%87%E9%92%88%EF%BC%8C%E4%BB%8E%E4%B8%8D%E5%90%8C%E7%9A%84%E4%BD%8D%E7%BD%AE%E5%BC%80%E5%A7%8B%E8%AF%BB%E5%86%99%3C/span%3E" STYLE="fork"/>
            <node TEXT="可以对文件有不同的权限" ID="7tGJUsy5Ql" _mubu_text="%3Cspan%3E%E5%8F%AF%E4%BB%A5%E5%AF%B9%E6%96%87%E4%BB%B6%E6%9C%89%E4%B8%8D%E5%90%8C%E7%9A%84%E6%9D%83%E9%99%90%3C/span%3E" STYLE="fork"/>
          </node>
          <node TEXT="还有一种情况，父子进程之间，两个描述符表，同一标识符指向同一打开文件表表项，指向一个v-node表表项" ID="WGYstM9Phs" _mubu_text="%3Cspan%20class=%22%20text-color-blue%22%3E%E8%BF%98%E6%9C%89%E4%B8%80%E7%A7%8D%E6%83%85%E5%86%B5%EF%BC%8C%E7%88%B6%E5%AD%90%E8%BF%9B%E7%A8%8B%E4%B9%8B%E9%97%B4%EF%BC%8C%E4%B8%A4%E4%B8%AA%E6%8F%8F%E8%BF%B0%E7%AC%A6%E8%A1%A8%EF%BC%8C%E5%90%8C%E4%B8%80%E6%A0%87%E8%AF%86%E7%AC%A6%E6%8C%87%E5%90%91%E5%90%8C%E4%B8%80%E6%89%93%E5%BC%80%E6%96%87%E4%BB%B6%E8%A1%A8%E8%A1%A8%E9%A1%B9%EF%BC%8C%E6%8C%87%E5%90%91%E4%B8%80%E4%B8%AAv-node%E8%A1%A8%E8%A1%A8%E9%A1%B9%3C/span%3E" STYLE="fork"/>
        </node>
      </node>
    </node>
    <node TEXT="10.9 IO重定向" ID="P7PhJcTXwz" _mubu_text="%3Cspan%3E10.9%20IO%E9%87%8D%E5%AE%9A%E5%90%91%3C/span%3E" STYLE="bubble" POSITION="default">
      <node TEXT="重定向可以把磁盘文件和标准输入输出联系起来" ID="Qm9q3op97H" _mubu_text="%3Cspan%3E%E9%87%8D%E5%AE%9A%E5%90%91%E5%8F%AF%E4%BB%A5%E6%8A%8A%E7%A3%81%E7%9B%98%E6%96%87%E4%BB%B6%E5%92%8C%E6%A0%87%E5%87%86%E8%BE%93%E5%85%A5%E8%BE%93%E5%87%BA%E8%81%94%E7%B3%BB%E8%B5%B7%E6%9D%A5%3C/span%3E" STYLE="fork"/>
      <node TEXT="在shell中使用 &gt; 进行重定向" ID="7dnTn9GFC8" _mubu_text="%3Cspan%3E%E5%9C%A8shell%E4%B8%AD%E4%BD%BF%E7%94%A8%20&amp;gt;%20%E8%BF%9B%E8%A1%8C%E9%87%8D%E5%AE%9A%E5%90%91%3C/span%3E" STYLE="fork">
        <node TEXT="书上的例子：ls结果写入文件" ID="dnMopoz8km" _mubu_text="%3Cspan%3E%E4%B9%A6%E4%B8%8A%E7%9A%84%E4%BE%8B%E5%AD%90%EF%BC%9Als%E7%BB%93%E6%9E%9C%E5%86%99%E5%85%A5%E6%96%87%E4%BB%B6%3C/span%3E" STYLE="fork">
          <node TEXT="ls &gt; a.txt" ID="edkTJ0QlJU" _mubu_text="%3Cspan%3Els%20&amp;gt;%20a.txt%3C/span%3E" STYLE="fork"/>
        </node>
        <node TEXT="自己想了一个差点错的例子" ID="0x9Lz4ypEw" _mubu_text="%3Cspan%3E%E8%87%AA%E5%B7%B1%E6%83%B3%E4%BA%86%E4%B8%80%E4%B8%AA%E5%B7%AE%E7%82%B9%E9%94%99%E7%9A%84%E4%BE%8B%E5%AD%90%3C/span%3E" STYLE="fork">
          <node TEXT="在shell中，./program &gt; a.txt" ID="jzFtGZpWEk" _mubu_text="%3Cspan%3E%E5%9C%A8shell%E4%B8%AD%EF%BC%8C./program%20&amp;gt;%20a.txt%3C/span%3E" STYLE="fork"/>
          <node TEXT="在C中，dup2(1,fd)" ID="i629D12jWm" _mubu_text="%3Cspan%3E%E5%9C%A8C%E4%B8%AD%EF%BC%8Cdup2(1,fd)%3C/span%3E" STYLE="fork"/>
        </node>
      </node>
      <node TEXT="在C语言中使用函数进行重定向" ID="ziSGcKQz9W" _mubu_text="%3Cspan%3E%E5%9C%A8C%E8%AF%AD%E8%A8%80%E4%B8%AD%E4%BD%BF%E7%94%A8%E5%87%BD%E6%95%B0%E8%BF%9B%E8%A1%8C%E9%87%8D%E5%AE%9A%E5%90%91%3C/span%3E" STYLE="fork">
        <node TEXT="using dup2(oldfd,newfd)" ID="LKZVEsqlbx" _mubu_text="%3Cspan%3Eusing%20dup2(oldfd,newfd)%3C/span%3E" STYLE="fork">
          <node TEXT="这个函数的返回值是int,但是书上完全没有讨论它的返回值" ID="kZlFcGdmQE" _mubu_text="%3Cspan%3E%E8%BF%99%E4%B8%AA%E5%87%BD%E6%95%B0%E7%9A%84%E8%BF%94%E5%9B%9E%E5%80%BC%E6%98%AFint,%E4%BD%86%E6%98%AF%E4%B9%A6%E4%B8%8A%E5%AE%8C%E5%85%A8%E6%B2%A1%E6%9C%89%E8%AE%A8%E8%AE%BA%E5%AE%83%E7%9A%84%E8%BF%94%E5%9B%9E%E5%80%BC%3C/span%3E" STYLE="fork"/>
        </node>
        <node TEXT="把描述符表表项old复制到new" ID="KDHjn73Scb" _mubu_text="%3Cspan%3E%E6%8A%8A%E6%8F%8F%E8%BF%B0%E7%AC%A6%E8%A1%A8%E8%A1%A8%E9%A1%B9old%E5%A4%8D%E5%88%B6%E5%88%B0new%3C/span%3E" STYLE="fork"/>
        <node TEXT="看一个图：文件A 被关闭，相应表项也会被删除" ID="h0uteonmAp" _mubu_text="%3Cspan%3E%E7%9C%8B%E4%B8%80%E4%B8%AA%E5%9B%BE%EF%BC%9A%E6%96%87%E4%BB%B6A%20%E8%A2%AB%E5%85%B3%E9%97%AD%EF%BC%8C%E7%9B%B8%E5%BA%94%E8%A1%A8%E9%A1%B9%E4%B9%9F%E4%BC%9A%E8%A2%AB%E5%88%A0%E9%99%A4%3C/span%3E" STYLE="fork"/>
      </node>
    </node>
    <node TEXT="10.10 标准IO" ID="eQ7BgSnWq9" _mubu_text="%3Cspan%3E10.10%20%E6%A0%87%E5%87%86IO%3C/span%3E" STYLE="bubble" POSITION="default">
      <node TEXT="标注I/O是C语言提供的，比Unix I/O更高级别的替代" ID="9flpQJ88dw" _mubu_text="%3Cspan%3E%E6%A0%87%E6%B3%A8I/O%E6%98%AFC%E8%AF%AD%E8%A8%80%E6%8F%90%E4%BE%9B%E7%9A%84%EF%BC%8C%E6%AF%94Unix%20I/O%E6%9B%B4%E9%AB%98%E7%BA%A7%E5%88%AB%E7%9A%84%E6%9B%BF%E4%BB%A3%3C/span%3E" STYLE="fork"/>
      <node TEXT="如fopen,fclose,用于读写字节的fread,fwrite,用于读写字符串的fgets,fputs,和scanf,printf" ID="RJb4ZKQa4a" _mubu_text="%3Cspan%3E%E5%A6%82fopen,fclose,%E7%94%A8%E4%BA%8E%E8%AF%BB%E5%86%99%E5%AD%97%E8%8A%82%E7%9A%84fread,fwrite,%E7%94%A8%E4%BA%8E%E8%AF%BB%E5%86%99%E5%AD%97%E7%AC%A6%E4%B8%B2%E7%9A%84fgets,fputs,%E5%92%8Cscanf,printf%3C/span%3E" STYLE="fork"/>
      <node TEXT="把打开的文件模型简化为一个流,和进程打开的三个文件类型，C程序有三个流" ID="uuNy8xEG2s" _mubu_text="%3Cspan%3E%E6%8A%8A%E6%89%93%E5%BC%80%E7%9A%84%E6%96%87%E4%BB%B6%E6%A8%A1%E5%9E%8B%E7%AE%80%E5%8C%96%E4%B8%BA%E4%B8%80%E4%B8%AA%E6%B5%81,%E5%92%8C%E8%BF%9B%E7%A8%8B%E6%89%93%E5%BC%80%E7%9A%84%E4%B8%89%E4%B8%AA%E6%96%87%E4%BB%B6%E7%B1%BB%E5%9E%8B%EF%BC%8CC%E7%A8%8B%E5%BA%8F%E6%9C%89%E4%B8%89%E4%B8%AA%E6%B5%81%3C/span%3E" STYLE="fork">
        <node TEXT="stdin" ID="tAPmrdIAKO" _mubu_text="%3Cspan%3Estdin%3C/span%3E" STYLE="fork"/>
        <node TEXT="stdout" ID="1y6xuFWfJU" _mubu_text="%3Cspan%3Estdout%3C/span%3E" STYLE="fork"/>
        <node TEXT="stderr" ID="TAubMvacs3" _mubu_text="%3Cspan%3Estderr%3C/span%3E" STYLE="fork"/>
      </node>
      <node TEXT="流是对文件描述符和流缓冲区的抽象" ID="TKLZY2VO71" _mubu_text="%3Cspan%3E%E6%B5%81%E6%98%AF%E5%AF%B9%E6%96%87%E4%BB%B6%E6%8F%8F%E8%BF%B0%E7%AC%A6%E5%92%8C%E6%B5%81%E7%BC%93%E5%86%B2%E5%8C%BA%E7%9A%84%E6%8A%BD%E8%B1%A1%3C/span%3E" STYLE="fork"/>
      <node TEXT="案例：降低系统级IO的开销，因为系统级I/O开销较大" ID="bTTwTEw35t" _mubu_text="%3Cspan%3E%E6%A1%88%E4%BE%8B%EF%BC%9A%E9%99%8D%E4%BD%8E%E7%B3%BB%E7%BB%9F%E7%BA%A7IO%E7%9A%84%E5%BC%80%E9%94%80%EF%BC%8C%E5%9B%A0%E4%B8%BA%E7%B3%BB%E7%BB%9F%E7%BA%A7I/O%E5%BC%80%E9%94%80%E8%BE%83%E5%A4%A7%3C/span%3E" STYLE="fork">
        <node TEXT="大概是这个意思，我们如果反复用getc去读，在此前应该调用一次系统级的(read)，然后此后getc从缓冲区读，不用调用read" ID="CsoKNHpyi0" _mubu_text="%3Cspan%3E%E5%A4%A7%E6%A6%82%E6%98%AF%E8%BF%99%E4%B8%AA%E6%84%8F%E6%80%9D%EF%BC%8C%E6%88%91%E4%BB%AC%E5%A6%82%E6%9E%9C%E5%8F%8D%E5%A4%8D%E7%94%A8getc%E5%8E%BB%E8%AF%BB%EF%BC%8C%E5%9C%A8%E6%AD%A4%E5%89%8D%E5%BA%94%E8%AF%A5%E8%B0%83%E7%94%A8%E4%B8%80%E6%AC%A1%E7%B3%BB%E7%BB%9F%E7%BA%A7%E7%9A%84(read)%EF%BC%8C%E7%84%B6%E5%90%8E%E6%AD%A4%E5%90%8Egetc%E4%BB%8E%E7%BC%93%E5%86%B2%E5%8C%BA%E8%AF%BB%EF%BC%8C%E4%B8%8D%E7%94%A8%E8%B0%83%E7%94%A8read%3C/span%3E" STYLE="fork"/>
      </node>
    </node>
    <node TEXT="10.11 我该使用哪些IO" ID="ucgC4g039k" _mubu_text="%3Cspan%3E10.11%20%E6%88%91%E8%AF%A5%E4%BD%BF%E7%94%A8%E5%93%AA%E4%BA%9BIO%3C/span%3E" STYLE="bubble" POSITION="default">
      <node TEXT="1.只要有可能就用标准IO，对于磁盘和终端设备是首选" ID="ms7ovwZh8u" _mubu_text="%3Cspan%3E1.%E5%8F%AA%E8%A6%81%E6%9C%89%E5%8F%AF%E8%83%BD%E5%B0%B1%E7%94%A8%E6%A0%87%E5%87%86IO%EF%BC%8C%E5%AF%B9%E4%BA%8E%E7%A3%81%E7%9B%98%E5%92%8C%E7%BB%88%E7%AB%AF%E8%AE%BE%E5%A4%87%E6%98%AF%E9%A6%96%E9%80%89%3C/span%3E" STYLE="fork"/>
      <node TEXT="2.不要用scanf等用于读文本文件的读二进制文件" ID="bu9VhhGz9J" _mubu_text="%3Cspan%3E2.%E4%B8%8D%E8%A6%81%E7%94%A8scanf%E7%AD%89%E7%94%A8%E4%BA%8E%E8%AF%BB%E6%96%87%E6%9C%AC%E6%96%87%E4%BB%B6%E7%9A%84%E8%AF%BB%E4%BA%8C%E8%BF%9B%E5%88%B6%E6%96%87%E4%BB%B6%3C/span%3E" STYLE="fork"/>
      <node TEXT="3.用RIO读socket" ID="G8SQ8jokj7" _mubu_text="%3Cspan%3E3.%E7%94%A8RIO%E8%AF%BBsocket%3C/span%3E" STYLE="fork"/>
      <node TEXT="注意两点限制" ID="0kUF9hoG2H" _mubu_text="%3Cspan%3E%E6%B3%A8%E6%84%8F%E4%B8%A4%E7%82%B9%E9%99%90%E5%88%B6%3C/span%3E" STYLE="fork">
        <node TEXT="不要在输入函数后立刻跟输出函数" ID="k58e6bF9eC" _mubu_text="%3Cspan%3E%E4%B8%8D%E8%A6%81%E5%9C%A8%E8%BE%93%E5%85%A5%E5%87%BD%E6%95%B0%E5%90%8E%E7%AB%8B%E5%88%BB%E8%B7%9F%E8%BE%93%E5%87%BA%E5%87%BD%E6%95%B0%3C/span%3E" STYLE="fork"/>
        <node TEXT="不要在输出函数中立刻跟输出函数" ID="sjxp7sy9wG" _mubu_text="%3Cspan%3E%E4%B8%8D%E8%A6%81%E5%9C%A8%E8%BE%93%E5%87%BA%E5%87%BD%E6%95%B0%E4%B8%AD%E7%AB%8B%E5%88%BB%E8%B7%9F%E8%BE%93%E5%87%BA%E5%87%BD%E6%95%B0%3C/span%3E" STYLE="fork"/>
        <node TEXT="涉及到一些和流的全双工性质相关的问题" ID="by8bxG2GGQ" _mubu_text="%3Cspan%3E%E6%B6%89%E5%8F%8A%E5%88%B0%E4%B8%80%E4%BA%9B%E5%92%8C%E6%B5%81%E7%9A%84%E5%85%A8%E5%8F%8C%E5%B7%A5%E6%80%A7%E8%B4%A8%E7%9B%B8%E5%85%B3%E7%9A%84%E9%97%AE%E9%A2%98%3C/span%3E" STYLE="fork"/>
      </node>
    </node>
  </node>
</map>