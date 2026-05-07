class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2891.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2891.0/lightdash-cli-0.2891.0-macos-arm64.tar.gz"
      sha256 "1398aa81b0a9c1bc9e0e32287c35be3b9c251169fbe1ef57296e8a7e47b11666"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2891.0/lightdash-cli-0.2891.0-macos-x64.tar.gz"
      sha256 "07982ab588db015d17eadaac1c3047a1b410e21df3186967710c219303d9759c"
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
