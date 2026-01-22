class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2368.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2368.0/lightdash-cli-0.2368.0-macos-arm64.tar.gz"
      sha256 "6aac66b4d70c6bb03f7641e9439f5aa024ab7b6e27ea5a9b0ff63e57ecb4673d"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2368.0/lightdash-cli-0.2368.0-macos-x64.tar.gz"
      sha256 "435f596061b95f4d541dbd49c3ca5f9708bd87c203c49d1309f021908ca25ea8"
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
