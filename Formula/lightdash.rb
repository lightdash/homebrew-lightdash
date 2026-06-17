class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3184.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3184.1/lightdash-cli-0.3184.1-macos-arm64.tar.gz"
      sha256 "7a52ebcd32f37575686eaa572155620ad7c48fbe668c7ea0aa54fd7d92ee17de"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3184.1/lightdash-cli-0.3184.1-macos-x64.tar.gz"
      sha256 "69ed48a68d161e4ccaf843aa34231d955294a231eb49cd0628920b9aeb1337d3"
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
