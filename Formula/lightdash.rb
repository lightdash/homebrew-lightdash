class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2313.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2313.0/lightdash-cli-0.2313.0-macos-arm64.tar.gz"
      sha256 "da763ed72051725469be0866b3f84a6a1efe5efda09e8da44cf5eda80c6bf75c"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2313.0/lightdash-cli-0.2313.0-macos-x64.tar.gz"
      sha256 "6cffafab07a1cd12b6841bb5a903cb9d365dc5e574263e73925484fd2b667924"
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
