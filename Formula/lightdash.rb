class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3104.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3104.4/lightdash-cli-0.3104.4-macos-arm64.tar.gz"
      sha256 "a3e909765672b5035f82738fc9133f7ef8773eccf9fdbb423ffb0cca935a84d5"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3104.4/lightdash-cli-0.3104.4-macos-x64.tar.gz"
      sha256 "9a95440a591e594e3f24125a0cbc35cebd6bfdacb41fb7d97878f63905f791a8"
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
