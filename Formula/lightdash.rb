class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2881.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2881.0/lightdash-cli-0.2881.0-macos-arm64.tar.gz"
      sha256 "3473137fe99a66203e701626a02707511257e112dd837138fb59646bf0e71cc5"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2881.0/lightdash-cli-0.2881.0-macos-x64.tar.gz"
      sha256 "a1c959771d29f59e1acdd93f3f7bb643b1f550cb04ceb97c2454de80f6a5e69c"
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
