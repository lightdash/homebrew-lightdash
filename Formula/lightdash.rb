class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.44.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.44.0/lightdash-cli-2.44.0-macos-arm64.tar.gz"
      sha256 "a61f63263689d7c49633dc9474a873ce099b6eed9c03dfd5cf569a9db095d318"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.44.0/lightdash-cli-2.44.0-macos-x64.tar.gz"
      sha256 "1d1ec036717fb459130f3aa24d9ef5dbfb5135c07bf53b1588e6a7a2ce370996"
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
