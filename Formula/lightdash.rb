class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2505.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2505.0/lightdash-cli-0.2505.0-macos-arm64.tar.gz"
      sha256 "947381a66e3deb26aafa7b0a69793f30618467d55ddb9e933922a8d425fba90a"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2505.0/lightdash-cli-0.2505.0-macos-x64.tar.gz"
      sha256 "e5d0ce1da29bbd570d4aa3f4204bf507a4b023b24d9db7cfb6ad91644fc2aafa"
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
