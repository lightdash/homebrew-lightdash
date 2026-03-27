class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2677.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2677.0/lightdash-cli-0.2677.0-macos-arm64.tar.gz"
      sha256 "349a0ca15c6f25034b917288a285cd085ec894ef4cd3c5934712f7f05077b904"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2677.0/lightdash-cli-0.2677.0-macos-x64.tar.gz"
      sha256 "ed9869e8c8e363f7b21a24b97e8d4df6c5849c0839c10020985471fffa8a9926"
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
