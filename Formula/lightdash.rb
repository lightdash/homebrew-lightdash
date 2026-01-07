class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2306.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2306.0/lightdash-cli-0.2306.0-macos-arm64.tar.gz"
      sha256 "ab0a7a4af7eee377e47c44abf436bc2e1414bc1f2ba628f818b34bad51593572"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2306.0/lightdash-cli-0.2306.0-macos-x64.tar.gz"
      sha256 "d435e6f70ea16a9231f859c9d491a4a4f64ff220ead7074186bdb6b2ef99f3ce"
    end
  end

  def install
    if Hardware::CPU.arm?
      bin.install "lightdash-macos-arm64" => "lightdash"
    else
      bin.install "lightdash-macos-x64" => "lightdash"
    end
  end

  test do
    system bin/"lightdash", "--version"
  end
end
