class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2853.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2853.0/lightdash-cli-0.2853.0-macos-arm64.tar.gz"
      sha256 "81218420813b961cac1d9ce434f272951929c2e343baae29cdf68cb1cc773417"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2853.0/lightdash-cli-0.2853.0-macos-x64.tar.gz"
      sha256 "0446aa592ca3a08339d3b6911980b100c515ea1cff3282ce0f43f12f6383bf5c"
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
