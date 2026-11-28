class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.449.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.449.0/lightdash-cli-3.449.0-macos-arm64.tar.gz"
      sha256 "1d024b93dcb912d922fbd85d46504029a303eae0ebbdea71d21692b6cff5c415"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.449.0/lightdash-cli-3.449.0-macos-x64.tar.gz"
      sha256 "a12b8438a4ec8edf5c8b503f724ea470362398e3a15d3f259dd76773fb90cf00"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.449.0/lightdash-cli-3.449.0-linux-x64.tar.gz"
    sha256 "46f2de489956759b94e72a3009cd849f0af00ceab5568f84aa96c51be261b5ed"

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
