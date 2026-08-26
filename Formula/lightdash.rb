class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.18.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.18.0/lightdash-cli-2.18.0-macos-arm64.tar.gz"
      sha256 "70893bbfdb8953a42a31f40fc60de772785e874a5f0c0db56f844868d4a24d7f"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.18.0/lightdash-cli-2.18.0-macos-x64.tar.gz"
      sha256 "a842abbe91678b912a1ccb62a2416bb44b085cc3779a58e441908290510c60ab"
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
