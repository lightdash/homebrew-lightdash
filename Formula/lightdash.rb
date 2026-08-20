class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.227.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.227.1/lightdash-cli-1.227.1-macos-arm64.tar.gz"
      sha256 "c234751c1575f597bc7ea5d47f30ef47ee691247e33b5d65cf14dca71ed5ea05"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.227.1/lightdash-cli-1.227.1-macos-x64.tar.gz"
      sha256 "5b67ca7c218e8acdf2240540b0e074d4a12c1bd99c4fca672eba6227a576609b"
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
