class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2762.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2762.0/lightdash-cli-0.2762.0-macos-arm64.tar.gz"
      sha256 "91acb3c3385d5661d8ff280889c0f51f3a3a341112e1d76fd6a17dfa05dcf1d4"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2762.0/lightdash-cli-0.2762.0-macos-x64.tar.gz"
      sha256 "59412fc57d3c3b5d8481a06e31bfc29c0a04372aa49088589716274fdb8c37c9"
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
