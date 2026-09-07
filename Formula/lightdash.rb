class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.135.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.135.2/lightdash-cli-2.135.2-macos-arm64.tar.gz"
      sha256 "1ce04100fae73a6a51c47ce5f2eafcaf07ec6b55fac644badf534718f40fdb47"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.135.2/lightdash-cli-2.135.2-macos-x64.tar.gz"
      sha256 "3b8f618c047c30e238147065b3449094deba786536da1223a53771a4387b5890"
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
