class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2648.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2648.0/lightdash-cli-0.2648.0-macos-arm64.tar.gz"
      sha256 "2e49e34480a341a00635b91dacf8860ee4061b32fa0d678ffa92409a80dafeab"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2648.0/lightdash-cli-0.2648.0-macos-x64.tar.gz"
      sha256 "150571dc0af45ba1b4fa60d198e22b24a34d9016e7c1728b67e656ab51e44f61"
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
