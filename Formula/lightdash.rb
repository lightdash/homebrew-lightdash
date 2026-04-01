class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2709.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2709.0/lightdash-cli-0.2709.0-macos-arm64.tar.gz"
      sha256 "6ebf29b8de86d1b684221807f6a3411a47fec06de6f271fbbeb14fcc2a30c9ba"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2709.0/lightdash-cli-0.2709.0-macos-x64.tar.gz"
      sha256 "c1f5a2c610d368e708086b8154cf240a97876c75acfc2190ea6fad901bd3abbb"
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
