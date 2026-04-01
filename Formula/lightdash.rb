class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2702.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2702.0/lightdash-cli-0.2702.0-macos-arm64.tar.gz"
      sha256 "91412cf3d920b705041bc850bf461ebfbc117a326dd07c93169530c8778048ed"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2702.0/lightdash-cli-0.2702.0-macos-x64.tar.gz"
      sha256 "68e325e558341a3be6cd8d39689c508016639fd917a1705c4630142de33f10b3"
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
