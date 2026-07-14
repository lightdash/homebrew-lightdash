class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3376.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3376.1/lightdash-cli-0.3376.1-macos-arm64.tar.gz"
      sha256 "56838f9413ead8cbc86ac6028399c75ff39e409b61e0b0f55735c22b78af2ef1"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3376.1/lightdash-cli-0.3376.1-macos-x64.tar.gz"
      sha256 "8327d759c6e70ec3ec3abf3a610990831c4dfa4e538f5dc989ea8d42800e9e0b"
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
