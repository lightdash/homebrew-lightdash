class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.53.10"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.53.10/lightdash-cli-3.53.10-macos-arm64.tar.gz"
      sha256 "4e39f399c088ce752d2786273a67b303eece9d25e3f0887ab6268320f8308e54"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.53.10/lightdash-cli-3.53.10-macos-x64.tar.gz"
      sha256 "2d91004327f0a0e0d865c1844449cefb0258e9159acc9e153c50c29b443174ca"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.53.10/lightdash-cli-3.53.10-linux-x64.tar.gz"
    sha256 "32cc33f33708757232f668bcd7904006634ca65ce80bab51c32b26c730f6ee71"

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
