class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3009.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3009.5/lightdash-cli-0.3009.5-macos-arm64.tar.gz"
      sha256 "8512fb482e82d4fb5ae4963f359b70b7971b9e0dbe1b9afadfafe13c7df87f1f"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3009.5/lightdash-cli-0.3009.5-macos-x64.tar.gz"
      sha256 "5a12642580553460f8947c7acd3adbcfca42860ccc7b8f87e3fb4da9f60f5386"
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
