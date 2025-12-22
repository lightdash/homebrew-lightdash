class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2270.11"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2270.11/lightdash-cli-0.2270.11-macos-arm64.tar.gz"
      sha256 "6693d401c573dbd9c4e61228604633a278dd9a6659404739c4f27d2f1f78c180"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2270.11/lightdash-cli-0.2270.11-macos-x64.tar.gz"
      sha256 "0c0f0230e83b33d0debc8dfbd41c5c3dc8ab74221489a5ff3c189a3a82ee4b9d"
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
