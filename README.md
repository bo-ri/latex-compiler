```bash
$ docker build -t latex .
$ docker run -it --rm -v $(pwd):/work latex
```

compileしたいファイルを`main.tex`で作成
コンテナ実行すると`main.pdf`が生成される
