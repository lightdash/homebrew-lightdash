class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3326.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3326.0/lightdash-cli-0.3326.0-macos-arm64.tar.gz"
      sha256 "98df0372971ca415fceea738dc7545d09ad08f5eb3b7478eba107ab0789d7053"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3326.0/lightdash-cli-0.3326.0-macos-x64.tar.gz"
      sha256 "fd13b1c831d261d7e3bc2b7bf514e1874d820d6672320a4fcf4f8fa5715163c2"
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
