class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2339.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2339.0/lightdash-cli-0.2339.0-macos-arm64.tar.gz"
      sha256 "922aa99bc7ba347932676707edd63789efbdde9da158c5d3fac4060020e37431"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2339.0/lightdash-cli-0.2339.0-macos-x64.tar.gz"
      sha256 "568d4cb3f7dafe8895762a54c66b781fbf4d007959f19dfa08de62476b0b93e7"
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
