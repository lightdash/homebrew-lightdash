class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2957.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2957.0/lightdash-cli-0.2957.0-macos-arm64.tar.gz"
      sha256 "b225a2b6e5e2a4828d18a8c5b872fbc65f8e7e96372c043f56eed13fb44f8d09"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2957.0/lightdash-cli-0.2957.0-macos-x64.tar.gz"
      sha256 "c17bc0607760e24cf9fdb2de17116fee788169a838b3b110033222bb41ffa76f"
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
