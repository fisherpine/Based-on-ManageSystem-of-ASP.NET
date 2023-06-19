<%@ Page Language="C#" AutoEventWireup="true" CodeFile="News.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>
<html>
<head>
  <title>新闻列表</title>
  <style>
    /* 全局样式 */
    * {
      box-sizing: border-box;
    }

    body {
      font-family: Arial, sans-serif;
      background-color: #f2f2f2;
      margin: 0;
      padding: 20px;
      display: flex;
      justify-content: center;
      align-items: center;
      min-height: 100vh;
    }

    /* 容器样式 */
    .container {
      width: 800px; /* 调整容器宽度 */
      background-color: #fff;
      border-radius: 4px;
      box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
      padding: 20px;
    }

    h1 {
      font-size: 24px;
      margin: 0 0 20px;
    }

    ul {
      list-style-type: none;
      padding: 0;
      margin: 0;
    }

    li {
      margin-bottom: 10px;
    }

    a {
      text-decoration: none;
      color: #333;
      transition: color 0.3s;
    }

    a:hover {
      color: #007bff;
    }

    /* 轮播样式 */
    #slideshow {
      width: 100%;
      height: 300px;
      position: relative;
      overflow: hidden;
    }

    #slideshow img {
      width: 100%;
      height: 100%;
      position: absolute;
      top: 0;
      left: 0;
      opacity: 0;
      transition: opacity 0.3s ease-in-out;
    }

    #slideshow img.active {
      opacity: 1;
    }

    /* 左右切换按钮样式 */
    .slideshow-button {
      position: absolute;
      top: 50%;
      transform: translateY(-50%);
      width: 40px;
      height: 40px;
      background-color: transparent;
      border: none;
      cursor: pointer;
      transition: background-color 0.3s;
      z-index: 2;
    }

    .slideshow-button:hover {
      background-color: rgba(0, 0, 0, 0.3);
    }

    .slideshow-button.left {
      left: 0;
      transform: rotate(-180deg);
      transform-origin: center;
      translate: 0 -50%;
    }

    .slideshow-button.right {
      right: 0;
    }

    /* 左箭头图标样式 */
    .slideshow-button.left .arrow {
      width: 20px;
      height: 20px;
      display: block;
      position: absolute;
      top: 50%;
      left: 50%;
      transform: translate(-50%, -50%) rotate(180deg);
      fill: #fff;
    }

    /* 右箭头图标样式 */
    .slideshow-button.right .arrow {
      width: 20px;
      height: 20px;
      display: block;
      position: absolute;
      top: 50%;
      left: 50%;
      transform: translate(-50%, -50%);
      fill: #fff;
    }
  </style>
</head>
<body>
  <div class="container">
    <h1>新闻列表</h1>
    <div id="slideshow">
      <img class="active" src="image/image1.jpg" alt="Image 1">
      <img src="image/image2.jpg" alt="Image 2">
      <img src="image/image3.jpg" alt="Image 3">
    </div>
    <ul id="newsList">
        <% List<YF.Model.News> list = YF.BLL.News.list();
            foreach (YF.Model.News newsItem in list)
            {
        %>
                <li><a href="<%= newsItem.Newsurl %>"><%= newsItem.Newstitle %></a></li>
        <% } %>
    </ul>
  </div>

  <script>
      // 获取图片容器和所有图片元素
      const slideshow = document.getElementById('slideshow');
      const images = slideshow.getElementsByTagName('img');

      let currentIndex = 0;

      function showSlide(index) {
          // 隐藏所有图片
          for (let i = 0; i < images.length; i++) {
              images[i].classList.remove('active');
          }

          // 显示指定索引的图片
          images[index].classList.add('active');
      }

      function prevSlide() {
          currentIndex--;
          if (currentIndex < 0) {
              currentIndex = images.length - 1;
          }
          showSlide(currentIndex);
      }

      function nextSlide() {
          currentIndex++;
          if (currentIndex >= images.length) {
              currentIndex = 0;
          }
          showSlide(currentIndex);
      }

      // 初始化显示第一张图片
      showSlide(currentIndex);

      // 创建左右切换按钮元素并添加事件监听
      const leftButton = document.createElement('button');
      leftButton.classList.add('slideshow-button', 'left');
      leftButton.innerHTML = '<svg class="arrow" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg"><path d="M15.41 7.41L14 6l-6 6 6 6 1.41-1.41L9.83 12z"/></svg>';
      leftButton.addEventListener('click', prevSlide);
      slideshow.appendChild(leftButton);

      const rightButton = document.createElement('button');
      rightButton.classList.add('slideshow-button', 'right');
      rightButton.innerHTML = '<svg class="arrow" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg"><path d="M8.59 16.59L10 18l6-6-6-6-1.41 1.41L13.17 12z"/></svg>';
      rightButton.addEventListener('click', nextSlide);
      slideshow.appendChild(rightButton);
  </script>
</body>
</html>
