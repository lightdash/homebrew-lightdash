class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3464.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3464.0/lightdash-cli-0.3464.0-macos-arm64.tar.gz"
      sha256 "6484ce4727d62992cac4a805f0e278693d79e877bbb9201eee34ff0ecf32409c"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3464.0/lightdash-cli-0.3464.0-macos-x64.tar.gz"
      sha256 "62b75a6b16268687d0f8e9a75e38f97ad9b9f9f886ee46d8587a2cf39b57745f"
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
