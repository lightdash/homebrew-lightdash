class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2719.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2719.0/lightdash-cli-0.2719.0-macos-arm64.tar.gz"
      sha256 "0a71db08f2fee3eec8f449fff08409360db6afaefe5a7e11eba0930abff10a2c"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2719.0/lightdash-cli-0.2719.0-macos-x64.tar.gz"
      sha256 "2d0f3a5e4bea7edcc9a2089f1f1677af540e3bc6e59c3d687c34c7a1dfc3f263"
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
