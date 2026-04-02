class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2720.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2720.0/lightdash-cli-0.2720.0-macos-arm64.tar.gz"
      sha256 "ffdf3420c3d881bbf6549167ce55e36575ae22824d6e4e8fe9404d4ba602d76f"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2720.0/lightdash-cli-0.2720.0-macos-x64.tar.gz"
      sha256 "3e1ceccb0cbeee52a9bc8fbceef68ce71f324f69c0a337f2fcfdfa99e252d5e2"
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
