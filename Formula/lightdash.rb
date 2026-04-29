class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2839.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2839.1/lightdash-cli-0.2839.1-macos-arm64.tar.gz"
      sha256 "55b998b254c9d06487e5cb08eb0a7741e7324ca9fc35340c075877bde0353dff"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2839.1/lightdash-cli-0.2839.1-macos-x64.tar.gz"
      sha256 "4beebc790152cb166dd330aefd28e879ef57b6e212ace7e09a30d920a21d9f8f"
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
