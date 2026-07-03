class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3302.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3302.0/lightdash-cli-0.3302.0-macos-arm64.tar.gz"
      sha256 "4c16a362e2e618faf1cbb5b1fd533cd5e553e2627cdf75b965be09ca3e329f62"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3302.0/lightdash-cli-0.3302.0-macos-x64.tar.gz"
      sha256 "50ebaa4986fd42c1b57946cd8af22805635bbab0af4c130c04f016476e62c7d6"
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
