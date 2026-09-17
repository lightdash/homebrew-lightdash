class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.245.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.245.2/lightdash-cli-2.245.2-macos-arm64.tar.gz"
      sha256 "71a448433c32c812807a802b165ea0c15fd026fe8d504b77437109eb1c747769"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.245.2/lightdash-cli-2.245.2-macos-x64.tar.gz"
      sha256 "857fc2d1305b826f0d953e31b3c1c75f2f6311f542bea83d51d71979c93cb379"
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
