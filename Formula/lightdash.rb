class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2981.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2981.3/lightdash-cli-0.2981.3-macos-arm64.tar.gz"
      sha256 "92a91899f11ec3521ecabf9634b81f6bfd2c59a640431cc2a7c03ae41d3e8536"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2981.3/lightdash-cli-0.2981.3-macos-x64.tar.gz"
      sha256 "757d996bf1c72435ba86e6a3c0c551a6d32ed21b3d3482dc0cdcc4c1fa136418"
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
