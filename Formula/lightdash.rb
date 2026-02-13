class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2461.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2461.0/lightdash-cli-0.2461.0-macos-arm64.tar.gz"
      sha256 "7e0b596b1107456274d87256f203a2404a5f28a1bf20be7e108b9b296e408c14"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2461.0/lightdash-cli-0.2461.0-macos-x64.tar.gz"
      sha256 "21e44572fe58d1c3597c1e7c794806e45b9b9091c2b52d1b81dcc31c255420cc"
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
