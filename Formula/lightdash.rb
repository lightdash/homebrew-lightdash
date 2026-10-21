class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.9.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.9.1/lightdash-cli-3.9.1-macos-arm64.tar.gz"
      sha256 "7d1b3ac28b16146944192c22101996700c977d7d1e05a1217b30f9f1950b50b2"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.9.1/lightdash-cli-3.9.1-macos-x64.tar.gz"
      sha256 "a9596b63d0f5141394a6e33659dbe32eaf32f82f3bab462dc510cc455b6b53d8"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.9.1/lightdash-cli-3.9.1-linux-x64.tar.gz"
    sha256 "68e32de8656f39f9b1a670d95926ebeb30bc3fc79e233b37501b14378578461b"

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
