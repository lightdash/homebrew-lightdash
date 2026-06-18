class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3188.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3188.0/lightdash-cli-0.3188.0-macos-arm64.tar.gz"
      sha256 "db143ef4f399e146de7b9507f897e94ee02b0bca0385d160180906c841fbb1c2"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3188.0/lightdash-cli-0.3188.0-macos-x64.tar.gz"
      sha256 "6d22335a4ef98ce9ba47df550b7adb64c58001f89008f0cf1c45f695085f500f"
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
