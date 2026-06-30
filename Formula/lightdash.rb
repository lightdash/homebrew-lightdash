class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3262.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3262.1/lightdash-cli-0.3262.1-macos-arm64.tar.gz"
      sha256 "efec34ff5b508bb36faa1855e1dea4ddd538fe9a4bda2583b0dc3fb40fd8dea0"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3262.1/lightdash-cli-0.3262.1-macos-x64.tar.gz"
      sha256 "37594514e8f877298d550b08d6aa05db183896af67a3ff30ca9a9b049916b55b"
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
