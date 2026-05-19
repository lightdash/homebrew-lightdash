class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2976.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2976.0/lightdash-cli-0.2976.0-macos-arm64.tar.gz"
      sha256 "3c9aac5c1c8352364e6591bfd32bc820bf05cbae4aea1c84fc927ce6ccf220e0"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2976.0/lightdash-cli-0.2976.0-macos-x64.tar.gz"
      sha256 "c1c61c1c00148c26d32797e2e1e3978d3bb9fb4e67f6a9150387d71e0b93dd31"
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
