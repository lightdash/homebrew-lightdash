class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.163.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.163.2/lightdash-cli-2.163.2-macos-arm64.tar.gz"
      sha256 "318252fccbcb9b2079be4b41e375374b649de29de69e2b96e5d1c17497c192f0"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.163.2/lightdash-cli-2.163.2-macos-x64.tar.gz"
      sha256 "47bb1d1257c073770845f00e33acad036cef0586cb55ba908572584c5c52cd83"
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
