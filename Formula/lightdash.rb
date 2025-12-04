class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2221.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2221.6/lightdash-cli-0.2221.6-macos-arm64.tar.gz"
      sha256 "cf8623500db01c303aa869067f1d6de617148301d1963a222d7029328c2c74d9"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2221.6/lightdash-cli-0.2221.6-macos-x64.tar.gz"
      sha256 "5f1a27f4f5cf4b7b55d831b35d51bc601170a3974c4d404fcdedae29cff0d523"
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
