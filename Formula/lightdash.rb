class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.567.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.567.0/lightdash-cli-2.567.0-macos-arm64.tar.gz"
      sha256 "b6592fb62f11440273e79ddcf0069e52809492d48f2be95a89bed5504bee86a6"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.567.0/lightdash-cli-2.567.0-macos-x64.tar.gz"
      sha256 "61c7e2eb5956821265c3ab2dad67ceb49059786bf85f1dad829fe1e10c5af8cf"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.567.0/lightdash-cli-2.567.0-linux-x64.tar.gz"
    sha256 "2b603e7a46ee829b1077972a6620e5011a87e5360b9f3d56efa64caa136f4ddd"

    depends_on arch: :x86_64
  end

  def install
    binary = Dir["lightdash-*"].first
    odie "No lightdash binary found in archive" if binary.nil?
    bin.install binary => "lightdash"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lightdash --version")
  end
end
