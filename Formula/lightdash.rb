class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2608.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2608.0/lightdash-cli-0.2608.0-macos-arm64.tar.gz"
      sha256 "ba335e507ceb9cc6069a31882a16a94952143abcadd6954bd5c219a12c96525f"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2608.0/lightdash-cli-0.2608.0-macos-x64.tar.gz"
      sha256 "6c13b54f4e0588baf6d35c89be2e50746338b33cc9f26715d7467740990fb9ad"
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
