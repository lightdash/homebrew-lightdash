class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2454.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2454.0/lightdash-cli-0.2454.0-macos-arm64.tar.gz"
      sha256 "05e9818c8c1b6612947be35e2c2e52554faf002e089b7af700a43e49d02777ce"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2454.0/lightdash-cli-0.2454.0-macos-x64.tar.gz"
      sha256 "8de8885689437b6a0194e2c17b9899fd2dd9a5b702020e837a91a93503e4c3fb"
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
