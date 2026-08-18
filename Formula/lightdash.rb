class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.172.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.172.3/lightdash-cli-1.172.3-macos-arm64.tar.gz"
      sha256 "397c094382b7f6fd680bf122a446db2be7d0e3fd5975217f2cbf5f124f35b7dc"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.172.3/lightdash-cli-1.172.3-macos-x64.tar.gz"
      sha256 "db3e83f25ca18341b0dedd4296042a9a846acaa6f79622bede378e898c92a737"
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
