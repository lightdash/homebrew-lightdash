class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2861.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2861.0/lightdash-cli-0.2861.0-macos-arm64.tar.gz"
      sha256 "504c69a49c2e1e8eebc801be8129bdc57eb6cea46cb2c0ec721bcdcec31b121c"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2861.0/lightdash-cli-0.2861.0-macos-x64.tar.gz"
      sha256 "83234a4d35a2955c9af88aa2c6b0b02106d8f5e931fe50266f85ced0a884df6f"
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
