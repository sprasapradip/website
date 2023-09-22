<style>
       .page-header-container {
    background-color: #f9f9f9;
    padding: 20px;
    border-radius: 10px;
    box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
    text-align: center;
    position: relative;
}

.page-header {
    font-size: 36px;
    margin-bottom: 0;
}
.rainbow-text {
    background: linear-gradient(45deg, #ff7e5f, #feb47b, #ffeda8, #a8c686, #63a69f, #5d5caa, #a3576c);
    background-clip: text;
    -webkit-background-clip: text;
    color: transparent;
    animation: rainbow-animation 5s ease infinite;
}

@keyframes rainbow-animation {
    0% { background-position: 0% 50%; }
    50% { background-position: 100% 50%; }
    100% { background-position: 0% 50%; }
}

    </style>

    
<div class="row">
    <div class="col-lg-12">
        <div class="page-header-container">
            <h1 class="page-header">Welcome to the<span class="rainbow-text"> Creative</span> Dashboard</h1>
        </div>
    </div>
    <!-- /.col-lg-12 -->
</div>
