class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2830.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2830.0/lightdash-cli-0.2830.0-macos-arm64.tar.gz"
      sha256 "bc55bd60dd9aefc182ad2e54d265a8556151b6f45f5266a13436f76da10a8ece"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2830.0/lightdash-cli-0.2830.0-macos-x64.tar.gz"
      sha256 "98847f0d4ca556fb5727a7ddb3b38bc0d3c332d5ffd3b518f0ec60c17f21f9ff"
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
