class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2327.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2327.0/lightdash-cli-0.2327.0-macos-arm64.tar.gz"
      sha256 "f4e4bb57d4722bd150762578ee92775851b886f88a55d850b159a9ab7b126df6"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2327.0/lightdash-cli-0.2327.0-macos-x64.tar.gz"
      sha256 "cee5683e4d382aaca7b1d50fa8c1e27dc11a124a74fbfeb8afa706ba3a6729db"
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
