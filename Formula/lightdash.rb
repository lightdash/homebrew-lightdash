class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3450.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3450.0/lightdash-cli-0.3450.0-macos-arm64.tar.gz"
      sha256 "b054164fc69883d9ac93272fe38021a72d8973bd239cfe2fe79f20d39d646ea7"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3450.0/lightdash-cli-0.3450.0-macos-x64.tar.gz"
      sha256 "2533df21be6738365cbc8ed0354e386c73fbd192e5d271f400b980fd2f31414b"
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
