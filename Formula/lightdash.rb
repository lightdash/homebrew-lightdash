class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2384.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2384.0/lightdash-cli-0.2384.0-macos-arm64.tar.gz"
      sha256 "781a68c19ad0a98631be2d61ed1e3793cc755d72c5395d8f437523dd3219c465"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2384.0/lightdash-cli-0.2384.0-macos-x64.tar.gz"
      sha256 "214cb0376beb0710c930a84dc292aa54f8557032c39765f2d119bf159bbd0c81"
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
