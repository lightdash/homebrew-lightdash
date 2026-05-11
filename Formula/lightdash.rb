class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2904.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2904.2/lightdash-cli-0.2904.2-macos-arm64.tar.gz"
      sha256 "497400acae2e23e13de23cde55b708ca586c921618038b96ee2f749d87e42ad7"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2904.2/lightdash-cli-0.2904.2-macos-x64.tar.gz"
      sha256 "9edc7a9bb9aa8c95e312f3ab2144b5c2eb7363331a8f9bab5e05d6a2ad2e88ab"
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
