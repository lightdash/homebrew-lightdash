class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.101.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.101.2/lightdash-cli-2.101.2-macos-arm64.tar.gz"
      sha256 "10bc4935ddf39c4e5324280049b062df3e033a9c4b19b022d906de7f82c49493"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.101.2/lightdash-cli-2.101.2-macos-x64.tar.gz"
      sha256 "d42cf81f66a92e31a468e2be3190be0835570054e8c9d967d273fbdac5e759d8"
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
