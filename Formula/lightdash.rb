class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.74.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.74.0/lightdash-cli-3.74.0-macos-arm64.tar.gz"
      sha256 "27bcb28310ea26de4c5a9b10c8461adf8ec663312e598c300419176bdffc5671"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.74.0/lightdash-cli-3.74.0-macos-x64.tar.gz"
      sha256 "51eaf400f006c569cd758ffe42aef396a0fadcf004b2733d9be00e256971a25d"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.74.0/lightdash-cli-3.74.0-linux-x64.tar.gz"
    sha256 "e3e48f9836a3d795df2f8d4e185e163ebc0cc70b4de5f2ae9eae10c220a87775"

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
