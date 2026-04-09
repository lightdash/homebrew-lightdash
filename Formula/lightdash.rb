class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2743.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2743.0/lightdash-cli-0.2743.0-macos-arm64.tar.gz"
      sha256 "4f5209bede48e413eb4e8e0c094cf1e407ab63f6373c79a4b9283a7e18b5fee2"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2743.0/lightdash-cli-0.2743.0-macos-x64.tar.gz"
      sha256 "387af98392b5e253f23010607eee425608a146088663ebd6ec8f284d49bad148"
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
